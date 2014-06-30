utility
releaseNotesString
	^ 'Changes to IRCe
	
Name: Network-IRC-fc.10.7.5
Author: fc
Time: 10 October 2005, 4:12:22 pm
UUID: f1bc6568-da54-4263-8c61-fcc4be283cc2
Ancestors: Network-IRC-fc.10.7.4

Fixed init bug
-----------------
Name: Network-IRC-fc.10.7.4
Author: fc
Time: 16 June 2005, 10:30:00 pm

Removed catogory Network-IRC-GUI-Morph from package.
This was a holdover from pre Morphic IRC and was causing problems with the New Objects menu.

Assed nethod spawn: aMessage to IRCConnection and IRCChannelObserver. This message is sent by text morphs if the user blue-clicks, it is a way to duplicate. We call IRCConnection>>newConsole.
--------------
06 June 2005 fc 10.7.1
Many changes over the last year. Current version has clickable http links, message coloring,
timestamped message lines retain the textline formatting.
--------------
20 June 2004 sbw
Bug fix associated with joining channel explicitly.  I had a method from another
package accidently included.


19 June 2004 sbw
Changed behavior of tabbed channel windows.  When a tabbed pane is closed
the next left-most tabbed pane is selected to be active.


13 June 2004 sbw

Added option to allow channel windows to be tabbed or not.  When option is on,
channel windows behave as before and remain captured in the parent window
under a tab.  When the option is off, the channel windows open in their own
windows.


11 June 2004 sbw

Added option for timestamps on all channel messages.
Fixed a problem where sounds did not play.


10 June 2004 sbw

Added /DOCS command to open up local windows with features and release notes.
Added initial support for low level quoting protocol, and ctcp quoting protocol.  It may not ever get used, but it is a starting point for hopefully deploying with DCC support.  My ideal would be that an IRC user could send Squeak MORPHS over IRC to other Squeakers using the same IRC client.
Added FINGER command support.
Added VERSION commands support.
VERSION is currently disabled, and FINGER is incomplete.
Created IRCTextLines objects to handle lines of text.
Factored IRCClientSounds and added new/modified sounds.
Added a read me class method for developers who may want to add their own sounds.
More cleanup of instance variables in IRCConnection.
Collapse the packages for model and GUI together.  Change the system category for IRC Tests.


06 June 2004 sbw

Added /me support.
Fixed problems with /JOIN not opening channel browsers.
Implemented low level quoting for future protocol work (DCC).
Implemented CTCP level quoting.


03 June 2004 sbw

Support for basic functionality in new IRCeMorph.
Created a test server.
Added localhost as a server configuration option in profiles.
Added IRCErrorLog to handle messages that would have gone to a gui.
Added /traceon /traceoff to other slash commands: /clear, /inspect, and /explore
Put back features window report (see IRCConnection class>>features).
Options listed in options pane are no longer dictionary key but are now normal English words.


28 May 2004 sbw

Factored classes into categories for model and GUI.
Reduced total number of classes.  Renamed several classes.
Merged enhanced client behavior into standard client.
Added initialize/unload logic to work cleanly with Monticello.
Unit tests for portions of the IRC model.
Improved management of profiles.
Improved use of IRC multicolumn panes (channels list and profiles list).
Re-established proper color list annotations for channel members.
Allow channel names to begin with letters other than just the letter #.
Cache the previous channel name to make it easier for the user.
Added a class to manage the external file/folder definitions for channel lists, and channel logs.  Better messages and list of channels in logs.
More options in setup panes.  Rewrite of much of the setup dialog screens.
Factored a lot of the logic away from the connection class.
Added IRCConnection handyExpressions for my tools space.
Included portion of BNF document for protocol messages as a workspace that can be referenced.
Fixed the IPv6 bug.
Removed the old documentation scheme (release notes, features, to-do list, etc....).
Added support for playing a sound when someone sends a message in a channel with your nick in the text.
Fixed problem in connection setup dialog when full name was longer than a certain length, the entry field displayed the value indented.  Problem was related to improper declaration of scrollbars.
'