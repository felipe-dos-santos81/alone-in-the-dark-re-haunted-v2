Alone in the Dark: Re-Haunted v2
================================

A remaster of Alone in the Dark (1992) with HD backgrounds and HD character
models. Source: https://github.com/felipe-dos-santos81/alone-in-the-dark-re-haunted-v2

This download does NOT contain the game. You need your own copy of
Alone in the Dark 1 (Steam, GOG or the CD).

How to play
-----------
1. Unzip this download anywhere you can write to (not Program Files).
2. Find your game's INDARK folder, which holds LISTBODY.PAK, ETAGE00.PAK,
   CAMERA00.PAK, OBJETS.ITD, VARS.ITD and the rest:
     GOG (macOS):     Alone in the Dark 1.app > Show Package Contents >
                      Contents/Resources/game/INDARK/
     Steam/GOG (PC):  <install folder>/INDARK/
     CD-ROM:          INDARK/ on the disc
3. Copy the contents of INDARK (the files, not the folder):
     Windows:  next to Tatou.exe. With a Steam or GOG install, Tatou.exe
               copies them itself, and on every start it also copies
               itself into that install so Steam/GOG launch it.
               gamedata.steamless = true in aitd_remaster.cfg turns both
               off.
     Linux:    next to Tatou.
     macOS:    into Tatou.app/Contents/Resources (right-click Tatou.app >
               Show Package Contents).
4. Run the game:
     Windows:  Tatou.exe
     Linux:    cd into this folder, then ./Tatou
     macOS:    Tatou.app

The game reads its files from the folder it starts in and writes its
settings (aitd_remaster.cfg) and saves there. Press F1 in game for the
options.

Music (optional): put one file per song, NN.ogg (or .flac, .mp3, .wav)
with NN the song number, in a music folder beside the game files. The
numbers are in docs/music-generation-guide.md in the source.

Warnings on first launch (the app is not signed)
------------------------------------------------
macOS:    open Tatou.app once; when macOS blocks it, go to
          System Settings > Privacy & Security and click "Open Anyway".
          (macOS 14 and earlier: right-click the app and choose Open.)
          Or, in Terminal: xattr -dr com.apple.quarantine Tatou.app
Windows:  if SmartScreen appears, click "More info", then "Run anyway".

Licence
-------
Re-Haunted is licensed under the GNU GPL v2 (LICENSE); its source code is at
the address above. It includes SDL3, bgfx, bx, bimg, Dear ImGui, SoLoud,
zlib and the IM Fell English font, under the licences in licenses/.
Alone in the Dark itself is not included and remains the property of its
rights holders.
