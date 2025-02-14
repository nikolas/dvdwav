# dvdwav

This project originally started as an ffmpeg script that extracts
audio directly from a DVD's VIDEO_TS folder. This method sort of
works, if you don't mind the mixed-up audio output: this may be useful
for some creative purposes.

The audio output from the ffmpeg script is scrambled because DVDs are
encrypted with something called
[Content Scramble System](https://en.wikipedia.org/wiki/Content_Scramble_System).
The [VideoLAN project](https://www.videolan.org/) has developed a
library called
[libdvdcss](https://www.videolan.org/developers/libdvdcss.html) to
handle this decryption, so we can more reliably extract audio from a
DVD using VLC's Convert/Save function, using steps described below.

It would be possible to make a program to handle this audio extraction
in a more automated way, making direct use of libdvdcss.

# Extract a DVD's audio using VLC