
default="basic.sh"

echo
echo "Sourcing user-defined environment."
echo "*************************"
echo "OPTIONS:"
echo "*************************"


ITH=0
OPTIONS=()
for file in `ls $SOURCING_TOOL_HOME`; do
    if [ "$file" != "new_env.sh" -a "$file" != "sourcing_tool.sh" -a "$file" != "sourcing_load_dependency.sh" -a "$file" != "bootstrap.sh" ]; then
        echo "$ITH : $file"
        OPTIONS[$((ITH++))]=$file
    fi
done
echo "*************************"
echo -n "Please select the number for the env. Default [$default]: "
read pref_env

if [ -z "$pref_env" ]; then
    pref_env=-1
fi

# default
if [ "$pref_env" -lt "0" -o "$pref_env" -ge "${#OPTIONS[@]}" ]; then
    echo "Using default: "$default
    pref_env=$default
    export SOURCING_TOOL_NAME="echo $pref_env"
    source $SOURCING_TOOL_HOME/$pref_env
else
    # loading selection
    pref_env=${OPTIONS[$pref_env]}
    if [ -a $SOURCING_TOOL_HOME/$pref_env ]; then
        echo Sourcing $SOURCING_TOOL_HOME/$pref_env
        export SOURCING_TOOL_NAME="echo $pref_env"
        source $SOURCING_TOOL_HOME/$pref_env
    else
        echo "$pref_env is not a valid env file. try again"
    fi
fi
