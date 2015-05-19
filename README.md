*An open source IRC Client for Squeak.*

# squIRC
#### SWTI2015-Project-06

## Installation

### from SAR-File
- open (or install and open) SqueakVM (tested on Squeak 4.5)
- download squIRC.sar file
- drag and drop SAR file on the running Squeak Image
- done! squIRC should be ready to start under Apps > squIRC

### with Filetree and Monticello
- clone this repository ```git clone https://github.com/HPI-SWA-Teaching/squIRC.git```
- in squeak, open MonticelloBrowser and create a new repository. select filetree://
- select the packages folder in the cloned git repository as base folder for filetree
- open the new filetree repository and load the following packages
  - Network-IRC-Model
  - Network-IRC-GUI
  - Network-IRC-Tests
- done! squIRC should be ready to start under Apps > squIRC

## Most important changes to Enhanced IRC (legacy project)

### For Users
- improved and more consistent UI
- unique colors for nicknames
- new server profile system
- GUI stays interactive while connecting to the server
- UTF-8 support

### For Developers
- refactored message/command handling (still not nice, but more consistent)
- new server profile system
- improved test coverage
  - from 11% (Network-IRC) to 27% (Network-IRC-Model) and 37% (Network-IRC-GUI) 

##### Build Status: 
<<<<<<< HEAD
[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/squIRC.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-06)
=======
[![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-06.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-06)
>>>>>>> 9b7f31be1871220f1f973a62c8b26a1a6787c8c0

