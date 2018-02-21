#!/bin/bash

find / -name .git -type d -prune | while read d; do
   chmod +x $d/hooks/*
done

