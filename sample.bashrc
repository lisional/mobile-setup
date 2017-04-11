# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias vi='vim'
alias studio='<path_to>/bin/studio.sh'

export ANDROID_SDK=
export ANDROID_HOME=
export ANDROID_NDK=

# Add adb directory to be able to call it from anywhere
export PATH=$PATH:$ANDROID_SDK/platform-tools
