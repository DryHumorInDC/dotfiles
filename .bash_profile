
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/Current
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home


#-------------------------------------------------------------
# Note: The following line is unnecessary; it is the default.
# export AWS_CONFIG_FILE=~/.aws/config
#-------------------------------------------------------------

#-------------------------------------------------------------
# export AWS_ACCESS_KEY=your-aws-access-key-id 
# export AWS_SECRET_KEY=your-aws-secret-key
#
# ALTERNATIVELY (e.g.)
# export EC2_KEYPAIR_NAME=bastion-qlstack2-lab-287-05cc20ab-5db9-4189-b010-33a64a6cac6e
# export EC2_KEYPAIR_PATH=/home/ec2-user/awsstudent.id.rsa
#-------------------------------------------------------------

#-------------------------------------------------------------

#-------------------------------------------------------------
export AWS_ACCESS_KEY=AKIAJOEEVWVKNATPHX7A
export AWS_SECRET_KEY=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
#-------------------------------------------------------------

export MANPAGER='less -X'

complete -C aws_completer aws


##
# Your previous /Users/larsonm/.bash_profile file was backed up as /Users/larsonm/.bash_profile.macports-saved_2015-02-08_at_15:04:25
##

# MacPorts Installer addition on 2015-02-08_at_15:04:25: adding an appropriate PATH variable for use with MacPorts.
export GRADLE_HOME=/usr/local/gradle
export PATH="$GRADLE_HOME/bin:$JAVA_HOME/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


#--------------------------------------------------------------------
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
#--------------------------------------------------------------------
export PATH="$GRADLE_HOME/bin:$JAVA_HOME/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda3 4.1.1 installer
export PATH="/Users/larsonm/anaconda3/bin:$PATH"
