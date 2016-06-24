#############################################################
# bootstrap env                                                 #
#############################################################

export SOURCING_TOOL_NAME=$BASH_SOURCE

echo "Hello Master! this is $SOURCING_TOOL_NAME."
echo "Please run '> \$SOURCING_TOOL' to select your prefered env."

# sourcing_tool
export SOURCING_TOOL="source $SOURCING_TOOL_HOME/sourcing_tool.sh"

