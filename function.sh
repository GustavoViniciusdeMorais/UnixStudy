#!/bin/bash
function list_inputs()
{
    for val in $@; do echo $val; done;
}
list_inputs $@

