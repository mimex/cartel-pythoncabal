#!/bin/bash
inkscape $1 -w 640 -e ${1//svg/png}
