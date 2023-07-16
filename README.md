# Friday Night Funkin'
> Uh oh! Your tryin to kiss ur hot girlfriend, but her MEAN and EVIL dad is trying to KILL you! He's an ex-rockstar, the only way to get to his heart? The power of music...

[Github](https://github.com/FunkinCrew/Funkin) | [itch.io](https://ninja-muffin24.itch.io/funkin) | [newgrounds](https://www.newgrounds.com/portal/view/770371)  

IF YOU MAKE A MOD AND DISTRIBUTE A MODIFIED / RECOMPILED VERSION, YOU MUST OPEN SOURCE YOUR MOD AS WELL
also i dont think i can get week 7 cutscenes workin'

# Funkin' Lactose

## Funkin' Lactose is an open source modification of the Friday Night Funkin' engine. The reason this is important will have to do with future plans of ours, so stay tuned if you'd like to hear more about those;
Funkin' Lactose is based off of the aforementioned Friday Night Funkin' source. It's made to be a bit more accessible and slightly easier to build off of, as well as having several quality of life changes and a significantly more focused direction on the more traditional feel of rhythm games, all while still keeping the same style and feel of Friday Night Funkin'. I know a lot of source codes are hard to work with for FNF, usually very unoptimised or very unorganised (Codename and Psych, I'm excluding you two.), I am planning to fix both of these issues with Funkin' Lactose in the future. True to the spirit of Newgrounds, Friday Night Funkin' should be accessible by everyone, both modders and gamers alike, and I wanted to make it my goal to fix a lot of the issues that prevented people from being able to use the base game's engine, as well as create a bit more polished engine, as I was unhappy with the current existing ones at the time.

### FUNKIN' LACTOSE IS ONLY MEANT TO BE USED ON DESKTOP! I AM NOT RESPONSIBLE FOR CRASHES/PROBLEMS WITH HTML5, NOR AM I RESPONSIBLE FOR MAINTAINING HTML5

## Just remember. 
This is a **mod.** This is not the vanilla game and should be treated as a **modification.** This is not and probably will never be official, so don't get confused.

#### This engine includes the following features.
* Lactose Input (its slighty nicer now woo)
* More options (ghost tapping, auto pause, shaders)
* softcoded characters (wip)
* softcoded weeks and songs (yoooo)
* minor lua support (extremely limited bruhhhhjh)
* misses counter (yes)
#### Here are the features we plan to add in the future.
* softcoded stages
* hscript support
* improved chart editor
* character editor

I really wanted to make an FNF engine that was easier to work with than any other, mostly because I thought about how messy most other engines including the base game were. That doesn't mean Funkin' Lactose is better than the base game however, Lactose is only a tribute to Friday Night Funkin' and its modding community, a little project of mine that I hope people can find enjoyment and use out of!

# Building Funkin' Lactose
Please stop using Haxe 4.1.5 and use [4.2.5.](https://haxe.org/download/4.2.5)  
Then execute these commands on Powershell/Terminal if you're on Windows 10 or 11/Command Prompt.
```
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib run flixel-tools setup
haxelib install flixel-addons
haxelib install flixel-ui
haxelib install hscript
haxelib install newgrounds 1.1.5
haxelib install hxCodec
haxelib install hxcpp-debug-server
```
Next, [install Git.](https://git-scm.com/downloads)  
Then, execute this command.
```
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit
```
At the moment, you can optionally fix the transition bug in songs with zoomed-out cameras.
```
haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons
```
Run build-Itch-WINDOWS.bat in /art/ and build.
# Credits
## Funkin' Lactose
* CharlesCatYT - Lead Programmer
* nennneko5787 - base engine idk if i should credit this guy but its archived sooo
* ShadowMario - StrumNote.hx code, Lua code and shader code that I stole and modified from [Psych Engine](https://github.com/ShadowMario/FNF-PsychEngine).
* k.net(brightfyre) - Window focus & unfocus source code I stole from [Indie Cross](https://github.com/brightfyregit/Indie-Cross-Public)
## Funkin
* ninjamuffin99 - Programmer
* PhantomArcade3K and Evilsk8r - Art
* Kawaisprite - Musician
