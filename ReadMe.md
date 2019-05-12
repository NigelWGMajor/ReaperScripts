# Reaper scripts

## Miscellaneous scripts used to customize my Reaper Digital Audio Workstation (DAw)

Several languages are possible, some better suited to different aplications.  I have used Eel2, Jsfx and Lua for various customizations in my DAW.

These are documented here:
[Reaper SDK](https://www.cockos.com/reaper/sdk/reascript/reascript.php)

Additional Style Sheets by [Raymon Radet](https://www.extremraym.com) make a
[Prettier versions](https://www.extremraym.com/cloud/reascript-doc/)

There is an editor built into Reaper, which allows debugging of run-time errors.  Combined with an editor like vsCode or notepad++ with the correct language support, which can provide intellisense, much can be achieved with very compact code.

Some of my active scripts are arranged in folders by type:

### Jsfx

A series of files to provide fixed attenuations:  these concise declarations are simply applied by the DAW to the audio samples as they are passed through the buffers - typically 48,000 samples per second across each of a few dozen tracks.  
These scripts are simply inserted into track effects or send chains as needed.

### Lua

Lua offers the ability to generate UI interface elements so could be handy where on-screen imput is needed but a full VST is not justified.  Its capabilities ovelap with Eel. Because there is a good Lua extension for VSCode I expect to use Lua more than Eel in the future.

### Eel

I used Eel scripting to simplify the user interface to the DAW, especially during performance. I have a couploe of physical Midi keyboards configured to use 9 software synthesizers in parallel: each synth has its own complex display and may need to be tweaked at anytime. Even though I have four screens available, this is clearly an issue.

Each synth's output is controlled by a physical fader on one of the keyboards, making it possible to mix in real time from the keyboard.  The Eel scripts allow the player to switch a display between the instrument UIs by simply pressing the physical button below the fader. Because I have assigned the instruments to a fixed number of tracks at the start of the mixer, it is possible to hide the instruments on all but the required track at the push of a button using these static scripts assigned to the buttons.
