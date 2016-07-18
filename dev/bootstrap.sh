#############################################################
# bootstrap env                                                 #
#############################################################

export SOURCING_TOOL_NAME="echo bootstrap.sh"

echo "Hello Master! this is $SOURCING_TOOL_NAME."
echo "Please run '> \$SOURCING_TOOL' to select your preferred env."

# sourcing_tool
export SOURCING_TOOL="source $SOURCING_TOOL_HOME/sourcing_tool.sh"
export SOURCING_TOOL_DEP="source $SOURCING_TOOL_HOME/sourcing_load_dependency.sh"

