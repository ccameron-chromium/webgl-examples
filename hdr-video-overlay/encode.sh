rm -f staircase-pq.mp4
ffmpeg -loop 1 -framerate 30 -i staircase-pq.png -vframes 1000 \
  -vf "drawtext=fontfile=/path/to/font.ttf:text='%{n}':x=w-tw-20:y=20:fontsize=24:fontcolor=black:box=1:boxcolor=black@0.0" \
  -c:v libvpx-vp9 -profile:v 2 -pix_fmt yuv420p10le \
  -color_primaries bt2020 -color_trc smpte2084 -colorspace bt2020nc -color_range tv \
  -crf 20 -b:v 0 \
  staircase-pq.mp4
