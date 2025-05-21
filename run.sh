#!/bin/bash
#
#--use-postprocessor SplitAndTag:when=after_move

# --dump-json
#"${PYTHON:-python3}" -bb -Werror -Xdev "$(dirname "$(realpath "$0")")/yt_dlp/__main__.py"  --retries infinite -P "/home/sdanilov/tmp/" -f bestaudio[ext=m4a] --verbose --extract-audio --cookies /tmp/ytdlp-cookies --output="/home/sdanilov/tmp/%(title)s [%(id)s].%(ext)s" --add-metadata --split-chapters https://www.youtube.com/watch?v=eunsZB9c0eA&t=630s&ab_channel=RazNitzanMusic

# --use-postprocessor 'SplitAndTag:when=before_dl;only_print=True;regex=%track\.%artist-%title'
# 
#"${PYTHON:-python3}" -bb -Werror -Xdev "$(dirname "$(realpath "$0")")/yt_dlp/__main__.py" -f bestaudio[ext=m4a] --extract-audio --skip-download --regex '%track\.%artist-%title' https://www.youtube.com/watch?v=eunsZB9c0eA&ab_channel=RazNitzanMusic

"${PYTHON:-python3}" -bb -Werror -Xdev "$(dirname "$(realpath "$0")")/yt_dlp/__main__.py" --download-sections "*0-1" --download-sections "*3000-3001" --download-sections "*6000-6001" --download-sections "*9000-9001" --download-sections "*12000-12001" -o "clip-%(section_start)s-%(section_end)s.%(ext)s" https://www.youtube.com/watch?v=9hqCMl2QzUE
