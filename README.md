# Description
Ruby script for automatic switching "length unit" between meters and millimeters.<br/>
When selecting a line or measuring with Tape Measure Tool, units will be millimeters.<br/>
When selecting face, group or component instance, units will be meters (squre meters for area, cubic meters for volume).<br/>

# Usage
There are 2 ways how to use it - either use it as a plugin (will work every time you start SketchUp), or as a temporary script (will work until you restart SketchUp).

If you need other units instead of meters and millimeters, update the script before using it.

### Plugin
I'm not a pro SketchUp user and I don't really know Ruby, therefore I won't create a proper plugin from this, at least not now. As it is now, it works pretty well for me. Minor downside is that you can't easily change units and/or precision because there's no UI for that. That must be done by editing the script.

To use it as a plugin, copy the file to:<br/>
c:\Users\<username>\AppData\Roaming\SketchUp\SketchUp 2017\SketchUp\Plugins\unit_switcher.rb<br/>
To stop using it, delete the file.<br/>

SketchUp must be restarted after copying, editing or deleting the file.

### Temporary script
If you want to test the script or need it only occasionally, you can open a Ruby Console (Window -> Ruby Console), copy the script into the console and press "enter" key. Script will start working and will be active until you close SketchUp.

# Donations
http://paypal.me/andrejssitals/5<br/>
bitcoin:1NgSmWfHgyWP5C7dc2ogRYZBAqPFuNv5kL<br/>
