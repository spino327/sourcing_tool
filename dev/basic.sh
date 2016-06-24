#############################################################
# SAMPLE BASIC env                                                 #
#############################################################

export SOURCING_TOOL_NAME=$BASH_SOURCE

echo "Hello Master! this is $SOURCING_TOOL_NAME."

#############
# BASIC STUFF
#############

# sourcing_tool
export SOURCING_TOOL="source $SOURCING_TOOL_HOME/sourcing_tool.sh"

#############
# USER STUFF
#############

# Add \$HOME/bin to PATH
export PATH=$HOME/bin:$PATH # to run programs that I set at ~/bin

# RVM
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# node
export PATH=$PATH:/usr/local/share/npm/bin # Add NPM (node package management) to run installed packages 

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_60`
export DYLD_LIBRARY_PATH=$JAVA_HOME/jre/lib/server:$DYLD_LIBRARY_PATH

# go-lang
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/opt/gopath
export PATH=$PATH:$GOPATH/bin

# android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

# brew.sh
export PATH=`brew --repository`/sbin:$PATH

# bash
source `brew --repository`/etc/bash_completion.d/brew
source `brew --repository`/etc/bash_completion.d/git-completion.bash
source `brew --repository`/etc/bash_completion.d/npm
source `brew --repository`/etc/bash_completion.d/maven
source `brew --repository`/etc/bash_completion.d/vagrant
source `brew --repository`/etc/bash_completion.d/scala
source `brew --repository`/etc/bash_completion.d/ninja-completion.sh

