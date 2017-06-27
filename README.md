# Notes on Kids Write Raspberry Pis

Files: 
1. pishrink.sh - Used to shrink pi backup files
2. emptyLibrary.sh - Used to delete the current calibre library

Nick's Note: The version in this repository uses absolute pathing (untested) to the calibre-library directory while the version in the backup image file uses relative pathing

### Turning the pi into a hotspot
[Link to script](https://github.com/harryallerston/RPI-Wireless-Hotspot)

TODO: Make a modified version of this script that creates for KidsWrite network defaults 

### Configuring Calibre Server
[General Tutorial](https://www.digitalocean.com/community/tutorials/how-to-create-a-calibre-ebook-server-on-ubuntu-14-04)

[Making Server start on boot](http://thanosk.net/content/running-calibre-server-service-under-systemd) 


Nick's Notes: Steps 1-3 and step 5 in the General Tutorial worked fine. Step 4 did not work.
Instead of Step 4 in the general tutorial use [this](http://thanosk.net/content/running-calibre-server-service-under-systemd)  to make the calibre-server start on boot

For Step 5 the tutorial made some pathing mistakes in his cron command. I've corrected and modified his command below:

```
#This version of the command adds the books in the calibre-library/toadd folder to the Calibre library on reboot
@reboot xvfb-run calibredb add /home/pi/calibre-library/toadd/ -r --with-library /home/pi/calibre-library && rm /home/pi/calibre-library/toadd/*
```

### Backups
[How to backup and restore a pi from an image](https://beebom.com/how-clone-raspberry-pi-sd-card-windows-linux-macos/)

Nick's Note: For restoring from a backup I found more success with [Etcher](https://etcher.io/) than the built in dd tool 

[Reducing the size of a backup image](https://github.com/Drewsif/PiShrink)
