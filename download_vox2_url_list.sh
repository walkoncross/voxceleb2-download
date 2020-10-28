#!/bin/bash

user=xxx # the user name you received from the VGG, in your email after your registering for this dataset
password=xxx # the password you received from the VGG, in your email after your registering for this dataset

cat $1 | xargs wget --user $user --password $password 
