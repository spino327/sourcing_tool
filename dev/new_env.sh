#!/bin/bash

#############################################################
# new_env.sh                                                #
############################################################# 

if [ -z "$1" ]; then
    echo "USAGE: new_env.sh <env name>. It creates a new env using as base the default env [$SOURCING_TOOL_HOME/basic.sh]"
    exit -1
fi

NAME=$1.sh

cp $SOURCING_TOOL_HOME/template.sh $SOURCING_TOOL_HOME/$NAME

echo "Please, modify $SOURCING_TOOL_HOME/$NAME and then call \$SOURCING_TOOL to source it"
