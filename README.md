# TLDR

### What is this?
As a hobby project, I have created a "smart home" system to make my home more comfortable and energy efficient. The entire thing runs off a [Tecomat Foxtrot CP-1000 PLC](https://www.tecomat.com/Products/cz/plc-tecomat-foxtrot/foxtrot-zakladni-moduly-a-prislusenstvi/123-cp-1000/).
This is the [Structured Text](https://en.wikipedia.org/wiki/IEC_61131-3) source code as well as all required [MOSAIC IDE](https://www.tecomat.com/download/software-and-firmware/mosaic/) configuration files to reproduce my project.

### Why is this on GitHub?
Although I have experience in software as well as a degree in embedded engineering, setting up the project was a pain due to the lack of documentation and available examples compared to mainstream languages like Java or C++.
I hope providing a working, although far from perfect example will help other PLC projects to gain more motion.

### "I'm going to hack your home!"
Nothing is exposed on the public internet and all systems included run on wired connection. I hope that is a high enough bar, but if isn't let me know!


# Details
## Hardware overview
This system have been fitted to a new construction home. Therefore, all sensors, inputs and actuators are wired. 
 - Each room has bunch off Cat6 outlets wired to a central patch panel in star topology. Apart from the regular TCP/IP network, this is the backbone of the alarm system, the analogue sensors and some other digital connections (ModBUS, RS232, OpenTherm). Wires are unshielded.
 - Inputs are push button light switches wired in start topology to a central terminal block. They operate on 24V DC.
 - Heating and domestic hot water is provided by a Vaillant boiler. It's communicating over [OpenTherm](https://www.opentherm.eu/opentherm-protocol/what-is-opentherm/#communication-standard) using [VR33 module](https://www.vaillant.be/regelingen/0020296182-00-1728112.pdf)
 - Heating is fully underfloor with [Siemens STP23 thermo electric valve](https://www.downloads.siemens.com/download-center/Download.aspx?pos=download&fct=getasset&id1=A6V10371999) controlled zones for every room.
 - There's a Paradox alarm system equipped with a [PRT3 Integration Module](https://www.paradox.com/Products/default.asp?CATID=7&SUBCATID=75&PRD=234) so it can talk to other systems over RS232.
 - There are analogue PT-1000 temperature sensors all over the place. It's an SMD component fitted to a PCB so small that it hides in the belly of a RJ45 connector and is wired to its pins.
 - The brain of the system is a [Tecomat Foxtrot CP-1000 PLC](https://www.tecomat.com/Products/cz/plc-tecomat-foxtrot/foxtrot-zakladni-moduly-a-prislusenstvi/123-cp-1000/).
 --It has several extension modules, so it talks over [OpenTherm](https://www.opentherm.eu/opentherm-protocol/what-is-opentherm/#communication-standard) and [ModBus](https://modbus.org/specs.php) on RS232 and RS485.
 --It interfaces with PT-1000 temperature sensors and reads temperature with approx 0,25 Celsius resolution.
 --It has relay modules those switch lighting and some programmable electric outlets.
 --It has contact inpts reading the signals from push buttons.
 --Features a built in webserver to serve as a UI.
 --It doesn't have SSL or any meaningful security measure, but it's easy to drag and drop a handy UI, so I use it on the internal newtork instead of spinning up a proper server.

## Software overview
The code is entirely written in  [Structured Text](https://en.wikipedia.org/wiki/IEC_61131-3) using the [Tecomat](https://www.tecomat.com/) brand provided [MOSAIC IDE](https://www.tecomat.com/download/software-and-firmware/mosaic/). It requires a license and runs only in a very limited mode without it. My license is tied to my physical device I program.

There is significant project configuration (e.g. naming and mapping physical ports on the PLC) that's done over the MOSAIC UI, but is not actual code. I have added all the data files generated by MOSAIC which contains those project configuration to git. Maybe even more than what's needed. But I need a repo where after any change (that screws up my home) I can just roll back and reinstantiate previous functionality.

**There is also autogenerated code for**

- The WEB UI
- The built in data logger (that I use for a historic track of building temperatures and motion activity hoping that one day I'll just bump the entire thing to a magic neural network that will add some value to the thing).

**The Structured Text code itself falls to 2 main categories:**

 - Generic data types and convenience functions.
 -- In normal systems, these would be user libraries, but creating and managing user libraries in MOSAIC isn't more convenient than source copy, so I don't do it.
 - Functional modules
 -- Lighting
 -- Heating
 -- Alarm
 -- Persisting (data to an SD card in the PLC to save user settings)

**Functional code *usually* follows the structure of having a module in 3 files:**

 - Globals, declaring variables that will be used across other modules or by the WEB UI
 - Init, that maps inputs and outputs or more generically, data flow
 - Actual logic that iterates over the data structures and does the actual trick

# Contribution
This is the live system of my home and frankly, I have doubts that anyone would like to contribute to the code.
Still, suggestions are warmly welcome and I'm happy to merge changes that improve code quality.

# Things I would do differently next time

## For sure
 - Making shutters electric and controlling them centrally as well
 -- It doesn't even need more input, just control it by pressing the light switches longer or multiple times
 -- They are important part of heat regulation
 - Using soil moisture sensors in the garden for more efficient watering

## Maybe
 - Thinking about KNX to make the system decentralised with no single point of failure like the central PLC unit