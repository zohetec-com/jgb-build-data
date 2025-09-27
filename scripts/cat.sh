#!/bin/bash
find . -name options -exec echo -e "\n{}:" \; -exec cat {} \;
