Oga-Converter
=============
This is a quick script I wrote to convert my music library from MP3 to OGA. You can change this script to work for any audio/video format that is supported by ffmpeg (that's the tool that you'll need to run this script), however, you might have to change a few things in the code (for example, if you do .flac then you'll want to remove the last 5 characters, not the last 4).

### Dependencies
Please install ffmpeg in order to run this command and (if you like Apple screwing you in the arse) make sure that shit's in your path.

### Usage
You can run the command as follows:
```bash
$ ./ogg-converter.sh path/to/music/*.mp3
```

This will convert all MP3 files in this directory into OGA (I might end up making this more user friendly if I get around to it).

**NOTICE:** For some reason bash doesn't like it if the files have a space character. So if you're a dumb ass who likes using spaces in file names, you're going to have to change that bad habit.

### License
This script is licensed with the [GNU GPLv3](/LICENSE).
