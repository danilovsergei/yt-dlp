#!/bin/bash
#
#--use-postprocessor SplitAndTag:when=after_move

# --dump-json
"${PYTHON:-python3}" -bb -Werror -Xdev "$(dirname "$(realpath "$0")")/yt_dlp/__main__.py"  --retries infinite -P "/home/sdanilov/tmp/" -f bestaudio[ext=m4a] --verbose --extract-audio --cookies /tmp/ytdlp-cookies --output="/home/sdanilov/tmp/%(title)s [%(id)s].%(ext)s" --add-metadata --split-chapters https://www.youtube.com/watch?v=eunsZB9c0eA&t=630s&ab_channel=RazNitzanMusic
