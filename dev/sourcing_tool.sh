
default="basic.sh"

echo
echo "Sourcing user-defined environment."
echo "*************************"
echo "OPTIONS:"
echo "*************************"

IGNORE_LIST=(
"new_env.sh"
"sourcing_tool.sh"
"sourcing_load_dependency.sh"
"bootstrap.sh"
"template.sh"
)
ITH=0
OPTIONS=()
for file in `ls $SOURCING_TOOL_HOME`; do
    status=1
    for ignore in ${IGNORE_LIST[@]}; do
        if [ "$file" == "$ignore" ]; then
            status=0
            break
        fi
    done
    if [ $status == 1 ]; then
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
