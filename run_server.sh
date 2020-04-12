#!/bin/bash - 
#===============================================================================
#
#          FILE: run_server.sh
# 
#         USAGE: ./run_server.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 04/12/2020 07:58
#      REVISION:  ---
#===============================================================================

## local dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

## this runs inside container
CODE=/code

echo "DIR : $DIR"
echo "CODE : $CODE"
# run container 

docker run  --rm -it -p 8889:8888 -v $DIR:$CODE -w $CODE covid19-dashboard:latest jupyter-notebook --ip 0.0.0.0 --no-browser $CODE

