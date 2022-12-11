#!/bin/bash

aws ec2 run-instances --image-id ami-01cae1550c0adea9c --count 1 --instance-type t2.micro

