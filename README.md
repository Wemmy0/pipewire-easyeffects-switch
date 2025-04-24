# pipewire-easyeffects-switch

Simple bash script to switch easy effects profiles based on output device.

Whilst there are otherwise to acomplish something similar, nothing really works as well as this I've found.

### Guide

1. Download the script somewhere and make it executable with `chmod +x output-monitor.sh`
2. Create a new easyeffects profile that's completely blank, call it `empty`
3. Edit the script
  - Change the target sink in the if statement on line 5
  - Change the respective easyeffects profile for the sink you set
  - If you want more devices and more presets, just add more if statements
4. Download `output-monitor.service` into the `/etc/systemd/user` directory
5. Start it and enable it:
```
sudo systemctl --user start output-monitor
sudo systemctl --user enable output-monitor
```
