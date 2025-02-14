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

## Extract a DVD's audio using VLC

1. Install [VLC](https://www.videolan.org/vlc/) and open it.
2. Go to Media -> Open Disc
3. Select No disc menus, and leave Title at 0. We first want to find
   which Title in the DVD you want to extract audio for, using the
   Play feature. DVDs have a number of different titles so it depends
   on if you're looking to extract from the special features of a DVD,
   etc. If this is a DVD of a movie, it's probably at title 0 or 1.
4. Go to Media -> Convert / Save
5. Click the Disc tab
6. Select DVD, No disc menus
7. Select the Title you want to extract
8. Click Convert / Save
9. In this Convert menu, there are a number of different profiles you
   can use. "Audio - FLAC" or "Audio - CD" are both good choices that
   will give you lossless flac or wav files of the audio in two
   channels.
10. Select a Destination file by clicking Browse. Call it something like
    `dvd_name.flac` or `dvd_name.wav` depending on what audio profile you
    chose.
11. Click Start
12. The file will now grow as VLC extracts audio from it. Once this is
    complete, there's a bug I've noticed where VLC keeps working on
    subsequent titles on the DVD after this, but the file is complete
    and you can just click Stop in VLC when this happens.
13. Open the audio file in Audacity and confirm it worked and
    everything.

### Further notes

If it matters for your uses, it's also possible to extract all of the
audio channels on the DVD unaltered, by creating your own Audio
Profile. You can make a new profile and select Audio codec -> Audio ->
Keep original audio track. Under Encapsulation select WAV, but maybe
FLAC would work too. This way, the audio will be output in possibly 5
or 6 different channels, if the DVD contains that data, which is
useful for isolating certain parts of the audio in some cases, like
the dialog, music, or sound effects.