#!/bin/bash

user=xxx # the user name you received from VGG after registering for this dataset
password=xxx # the password you received from VGG after registering for this dataset

cat $1 | xargs wget --user $user --password $password 
