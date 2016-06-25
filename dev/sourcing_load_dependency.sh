
#
# Sourcing load dependency tool
#

if [ -z "$1" ]; then
    echo "ERROR: sourcing_load_dependency tool needs a env file name"
    echo "USAGE: ./sourcing_load_dependency.sh env1 ..."
else
    DEPS=$@

    echo "loading dependencies..."

    for dep in $DEPS; do
        if [ -a $SOURCING_TOOL_HOME/$dep ]; then
            echo Sourcing $SOURCING_TOOL_HOME/$dep
            source $SOURCING_TOOL_HOME/$dep
        else
            echo "$dep is not a valid env file. Try again"
        fi
    done
fi

