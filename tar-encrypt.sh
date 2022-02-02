#!/bin/bash

echo Enter tar name:
read tarname
echo Which files would you like to encrypt\?
read files
tar -cvf $tarname $files
echo done.
