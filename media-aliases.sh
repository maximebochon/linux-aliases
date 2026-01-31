alias extractFirstFrameFromVideoAsPNG="ffmpeg -vframes 1 first_frame.png -i"
alias extractFirstFrameFromVideoAsJPEG="ffmpeg -vframes 1 -qscale:v 2 first_frame.jpg -i"
alias extractFirstFrameFromVideo=extractFirstFrameFromVideoAsJPEG

alias extractOpusAudioFromVideo="ffmpeg -c:a copy audio.opus -i"

alias renameAudioFileFromMetadata="exiftool '-FileName<\$Artist - \$Album - \$Title.%e'"

alias renamePhotoFilesFromMetadata="exiftool -dateFormat %Y-%m-%d_%Hh%Mm%Ss '-Filename<\${DateTimeOriginal}\${SubSecTimeOriginal;\$_=substr(\$_,0,3);\$_.=0 x(3-length)}.\${Model;tr/ /-/}.\${FileTypeExtension}' *.{jpg,JPG,jpeg,JPEG,heic,HEIC,cr2,CR2}"
