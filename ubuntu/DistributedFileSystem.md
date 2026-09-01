## Linux-based replicated file storage setup
### Infrastructure as Code Example (Ansible + GlusterFS)

#### 1. Inventory File (`hosts.yml`)
```yaml
all:
  children:
    gluster_cluster:
      hosts:
        storage1:
          ansible_host: 192.168.1.101
        storage2:
          ansible_host: 192.168.1.102
      vars:
        ansible_user: admin
        gluster_brick_path: /data/glusterfs
        gluster_volume_name: shared_volume
```

#### 2. Main Playbook (`gluster-setup.yml`)
```yaml
---
- name: Configure GlusterFS Replicated Storage
  hosts: gluster_cluster
  become: yes
  tasks:
    - name: Install GlusterFS packages
      apt:
        name:
          - glusterfs-server
          - glusterfs-client
        state: present
        update_cache: yes

    - name: Create brick directory
      file:
        path: "{{ gluster_brick_path }}"
        state: directory
        mode: '0755'

    - name: Start and enable GlusterFS service
      systemd:
        name: glusterd
        state: started
        enabled: yes

- name: Configure GlusterFS Volume on Primary Node
  hosts: storage1
  become: yes
  tasks:
    - name: Probe peer nodes
      command: "gluster peer probe {{ item }}"
      loop:
        - storage2
      ignore_errors: yes

    - name: Create replicated volume
      command: >
        gluster volume create {{ gluster_volume_name }}
        replica 2
        storage1:{{ gluster_brick_path }}/brick
        storage2:{{ gluster_brick_path }}/brick
        force

    - name: Start volume
      command: "gluster volume start {{ gluster_volume_name }}"

    - name: Mount volume on all nodes
      mount:
        path: /mnt/shared
        src: "{{ ansible_default_ipv4.address }}:/{{ gluster_volume_name }}"
        fstype: glusterfs
        opts: defaults,_netdev
        state: mounted
```

#### 3. Alternative with Docker Compose (for testing)
```yaml
version: '3.8'
services:
  gluster1:
    image: gluster/gluster-centos:latest
    privileged: true
    volumes:
      - ./data1:/data
    networks:
      - storage_net

  gluster2:
    image: gluster/gluster-centos:latest
    privileged: true
    volumes:
      - ./data2:/data
    networks:
      - storage_net

networks:
  storage_net:
    driver: bridge
```

### Key References

1. **GlusterFS Official Documentation**  
   [GlusterFS Installation Guide](https://docs.gluster.org/en/latest/Install-Guide/Overview/)

2. **Ansible GlusterFS Module**  
   [Ansible GlusterFS Documentation](https://docs.ansible.com/ansible/latest/collections/community/general/gluster_volume_module.html)

3. **Red Hat Gluster Storage Administration**  
   [Creating Replicated Volumes](https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.5/html/administration_guide/creating_replicated_volumes)

4. **DigitalOcean GlusterFS Tutorial**  
   [How to Create a Redundant Storage Pool Using GlusterFS](https://www.digitalocean.com/community/tutorials/how-to-create-a-redundant-storage-pool-using-glusterfs-on-ubuntu-servers)
