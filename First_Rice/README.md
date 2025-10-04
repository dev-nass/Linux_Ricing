# Context of Everything

( Last updated: September 28, 2025)

Note that some of the configuration here are added on `i3` config so they autorun alongside i3 each time we boot.

| Software   | Config Path                                                          | Description                                                                    |
| ---------- | -------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| i3         | `~/.config/i3/config`                                                | My tiling window manager                                                       |
| i3 blocks  | `~/.config/i3blocks/config`                                          | My panel, can be seen at the top of the screen.                                |
| Nitrogen   | `no config`                                                          | For my wallpaper, can be search on rofi or run on the terminal using its name. |
| redshift   | `~/.config/redshift.conf`                                            | For night light.                                                               |
| Rofi       | `~/.config/rofi/config.rasi`, `~/.config/rofi/scripts/power_menu.sh` | App search, the other configuration is for Shutdown, Restart etc.,             |
| flameshort | `no config`                                                          | For screenshot                                                                 |
| xclip      | `no config`                                                          | for terminal and all apps clipboard.                                           |

### Battery indicator on i3 blocks

- `acpi` it is default on Linux Mint cinnamon and I'm using this on `i3 blocks` config.

### Changing i3 screen DPI

- `~/.Xresources`

### To make rofi power menu work

- `chmod +x ~/.config/rofi/scripts/power_menu.sh`
- add it on your `i3` config.
