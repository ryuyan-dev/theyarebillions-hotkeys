# They Are Billions - Building/Production Hotkeys

As a StarCraft player, I couldn't stand to play this game without hotkeys, so I created this.

## Layouts

This tool comes in two forms: mnemonic and grid.

The mnemonic hotkey layout tries to map buttons to easy to remember and easy to reach keys. If you've played WarCraft or StarCraft RTS games with the default hotkey layout, this should be familiar to you.

The grid layout is similar to the StarCraft 2 Grid hotkey layout as well as games like Age of Empires. It maps buttons based on their positions in the menu. For example, the top left button would be Q, and the button adjacent to the right of that would be W.

## Supported Resolutions

- 1280x720
- 1280x768
- 1280x800
- 1280x960
- 1280x1024
- 1360x768
- 1366x768
- 1600x900
- 1600x1024
- 1680x1050
- 1768x992
- 1920x1080
- 2560x1080
- 2560x1440

__Windowed Mode and Full Borderless Window Only__

If you use a different resolution that you don't see in the list above, please [submit a new issue here](https://github.com/c64-ryan/theyarebillions-hotkeys/issues/new) and I'll do my best to accomodate you.

## Usage

Download the .exe for your chosen layout (mnemonic or grid) from the latest release [here](https://github.com/c64-ryan/theyarebillions-hotkeys/releases) and run it as an administrator.

This tool is made with [AutoHotkey](https://www.autohotkey.com), so if you have that installed, alternatively you can download the source script and run that, but you will also need to run it as administrator. Administrative rights are necessary to give the script the ability to interact with the game window.

While the script is running, there will be an H icon on your taskbar. You can right-click on this and hit Exit to close the script.

__Important:__ This script works in windowed and full borderless window modes. It does not work in fullscreen mode. Go to the graphics setting in the game and ensure Window Mode is checked OR Full Borderless Window is checked.

## Hotkey references

[Mnemonic Hotkey Reference Guide](hotkey_reference.md)

## Donations

I created this tool to make the game more enjoyable for myself. After I finished, I put it a lot of hours to make it more useful to others instead of just myself. If you found this useful, send a few dollars my way, if you like!

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=WDDCNVUYT28JC)

## Original Script

I used [this repository](https://github.com/b-adkins/they_are_billions.ahk) as a base, but it was incomplete, it didn't work very well, and it hasn't seen updates for years, so I made my own version with a lot of changes. Here are the main updates I made:

- It works (I couldn't get the original version to work properly, the keys would trigger when I wouldn't want them too)
- The hotkeys only trigger in the game, not all over your desktop
- The script _should_ be able to figure out where the buttons are without you having to figure out the coordinates
- The script is smart enough to know when you have certain buildings selected, so it knows which hotkeys to enact
- Added unit production hotkeys (unimplemented in original script)
- Added executable files so you don't need to install AutoHotkey
- Better ergonomic building category hotkeys
- Grid layout support
- Building hotkeys are disabled while you're placing a building
- Some missing hotkeys

## Bugs? Suggestions?

If you encounter a bug, or if you have any suggestions for changes you would like to see, please [submit a new issue here](https://github.com/c64-ryan/theyarebillions-hotkeys/issues/new).