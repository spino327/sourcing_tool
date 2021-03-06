# sourcing_tool
Simple bash-based tool to source user-defined environments

## Problem
Sometimes you need to use different libraries or applications, and potentially you need different versions of those. It can become a mess if you are working on different projects that use different versions of compilers/libraries/... One solution is to use tools like modules or valet, but I don't have time to configure a complex environment management software.

## Solution
Using a simple combination of (target bash file with export definition) and the `source` command.

## HOW TO USE

### SIMPLE USE
1. Add the definition of sample_basrc to your bashrc.

> export SOURCING_TOOL_HOME=$HOME/dev
> source $SOURCING_TOOL_HOME/bootstrap.sh

You'll need to copy the *dev* folder to the location you want to store the env files and the provided scripts. You'll need to change your bashrc according the location of *dev*.

2. Create new environments as you need using `$SOURCING_TOOL_HOME/new_env.sh <new env name>`

> $ $SOURCING_TOOL_HOME/new_env.sh my_new_env

This will create a new bash file based on `$SOURCING_TOOL_HOME/basic.sh`. After creating the new bash file, you can go ahead and add the definitions that you need in your new environment. Of course, you can also customize what are the definitions in you basic.sh.
3. Use the `sourcing_tool` to load your desired environment.
Execute in your terminal `$ $SOURCING_TOOL`
You will see something like:

> Sourcing user-defined environment. 
> *************************
> OPTIONS:
> *************************
> 0 : basic.sh  
> 1 : my_new_env.sh
> *************************
> Please select the number for the env. default [basic.sh]: 

The script will wait for you to type the number of env file you'd like to source. Use just the number, e.g. "1" to load "my_new_env.sh".

### DEPENDENCIES
Assuming you have your brand new "my_new_env.sh" file. To add dependencies to my_new_env.sh so that it sources other env files you can use the `$SOURCING_TOOL_DEP`. Assuming we have env files named "tools.sh" and "libraries.sh", and we want to use them as dependencies in "my_new_env.sh". Then, you need to add the following line to "my_new_env.sh":

> $SOURCING_TOOL_DEP tools.sh libraries.sh

## EXAMPLES  
You can check to simple examples at the following gist https://gist.github.com/spino327/f0904a8f26a78e0bfbbe3c4816d83ea7.

### TODO

