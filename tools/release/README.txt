Alone in the Dark: Re-Haunted v2
================================

A remaster of Alone in the Dark (1992) with HD backgrounds and HD character
models. Source: https://github.com/felipe-dos-santos81/alone-in-the-dark-re-haunted-v2

The game data is built into the program: Alone in the Dark 1, Jack in the
Dark, Alone in the Dark 2 and Alone in the Dark 3. Nothing else to install.

How to play
-----------
1. Unzip this download anywhere you can write to (not Program Files).
2. Run the game:
     Windows:  Tatou.exe
     Linux:    cd into this folder, then ./Tatou
     macOS:    Tatou.app
3. Alone in the Dark 1 starts. To play another game, press F1, choose it
   under Game data > Game mode, and restart.

The game writes its settings (aitd_remaster.cfg) and saves in the folder it
starts in (Tatou.app/Contents/Resources on macOS). Press F1 in game for the
options.

Your own game files (optional): .PAK and .ITD files in that same folder
are read instead of the built-in ones.
Windows: with a Steam or GOG install of Alone in the Dark, Tatou.exe copies
its files from there, and on every start copies itself into that install
so Steam/GOG launch it. gamedata.steamless = true in aitd_remaster.cfg
turns both off.

Music (optional): put one file per song, NN.ogg (or .flac, .mp3, .wav)
with NN the song number, in a music folder in that same folder. The
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
Alone in the Dark and its data remain the property of their rights holders.
