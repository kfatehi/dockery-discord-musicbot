# my unraid docker discord musicbot setup

the musicbot found here https://github.com/Just-Some-Bots/MusicBot is pretty great

their discord community is great too, very helpful.

i wanted to run this bot on my unraid after using it on a standalone ubuntu rig for awhile

the bot is pretty finicky with respect to specific python version (3.7.9, but get 3.8 and you'll be left salty [get it, pynacl errors, ehhh nevermind])

also the dockerfile, as alpine-y as it is, is not following the ["recommended"](https://just-some-bots.github.io/MusicBot/installing/ubuntu/) so as a compromise i put my own together here where i deal with the python problem using asdf and virtualenv.

i really wish i could `source` asdf in Dockerfile directly instead of having an external script, but i digress.

hopefully this will mean i can maintain the bot as going through one upgrade was bad enough (pynacl had to change from 1.2.5 to 1.3.0 at time of this writing) but the bot is so good it was worth doing this work here. i hope that publishing it will save you time.

## requirements

1. unraid is irrelevant in the context of this repo. you just need `docker` installed
2. clone musicbot `https://github.com/Just-Some-Bots/MusicBot.git` within

## usage

build and run the image with a terminal you can Ctrl-C to kill: `start.sh`

daemonized it into your docker with `install.sh`

## notes 

you may notice that the dockerfile needs some "learning lessons" to come back and clean up earlier segment where it was just copy-pasta from the musicbot docs