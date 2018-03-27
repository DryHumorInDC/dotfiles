#!/bin/bash

inputFile=$1
outputFile=$2

# rm -f $outputFile video.mp4 audio.aac output.mp4
# cmd="ffmpeg -i '$inputFile' -c:v libx265 -c:a aac -preset ultrafast -an -x265-params crf=25 video.mp4"
# echo $cmd && eval $cmd
# cmd="ffmpeg -i '$inputFile' -c:a libfdk_aac -profile:a aac_he_v2 audio.aac"
# echo $cmd && eval $cmd
# cmd="mp4box -add audio.aac -add video.mp4 output.mp4"
# echo $cmd && eval $cmd
# cmd="ffmpeg -i output.mp4 -vcodec copy -acodec copy -tag:v hvc1 '$outputFile'"
# echo $cmd && eval $cmd

# brew install ffmpeg --with-tools --with-fdk-aac --with-libvpx --with-x265 --HEAD
#ffmpeg -i $inputFile -c:v libx265 \
#	-c:a aac -b:a 128k -tag:v hvc1 \
#	-x265-params crf=25 \
#	$outputFile

ffmpeg -i $inputFile -r 30 -c:v libx265 -crf 21 -c:a aac -b:a 128k -f mp4 -pix_fmt yuv420p -tag:v hvc1 -movflags faststart $outputFile
