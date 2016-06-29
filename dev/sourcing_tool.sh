
default="basic.sh"

echo
echo "Sourcing user-defined environment."
echo "*************************"
echo "OPTIONS:"
echo "*************************"

for file in `ls $SOURCING_TOOL_HOME`; do
    if [ "$file" != "new_env.sh" -a "$file" != "sourcing_tool.sh" -a "$file" != "sourcing_load_dependency.sh" -a "$file" != "bootstrap.sh" ]; then
        echo $file
    fi
done
echo "*************************"
echo -n "Please select env. Default [$default]: "
read pref_env

if [ -z "$pref_env" ]; then
    echo "Using default: "$default
    pref_env=$default
fi
if [ -a $SOURCING_TOOL_HOME/$pref_env ]; then
    echo Sourcing $SOURCING_TOOL_HOME/$pref_env
    source $SOURCING_TOOL_HOME/$pref_env
else
    echo "$pref_env is not a valid env file. try again"
fi
