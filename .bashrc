
function pathmunge {
    if ! echo $PATH | egrep -q "(^|:)$1($|:)"; then
        if [ "$2" = "after" ]; then
            PATH=$PATH:$1;
        else
            PATH=$1:$PATH;
        fi;
    fi
}

sv='set -o vi'
lrt='ls -lsrt'
ll='ls -l'

function ffmpeg-dv-to-mp4 {
	cmd="ffmpeg -i $1 -c:v libx264 -c:a aac -pix_fmt yuv420p -strict experimental $2"
	echo "running:"
	echo $cmd
	eval $cmd
}

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
#[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
#[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

alias downandup='cdmlrn && ./gradlew restartDev && cd -'


pathmunge "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
pathmunge ~/bin
alias ll='ls -ls'
alias lrt='ls -lsrt'
alias ffprobe='ffprobe -hide_banner'
alias ffmpeg='ffmpeg -hide_banner'
