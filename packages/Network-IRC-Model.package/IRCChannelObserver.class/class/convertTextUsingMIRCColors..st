irc color text support
convertTextUsingMIRCColors: aTextOrString 
	"We need to answer Text having the colors converted as required.  
	A color sequence ends with each line of text or an empty trap  
	character. The trap character having a 1 or 2 digit numerical value  
	directly following is the mIRC code for a foreground color change. An  
	optional comma directly following the number means there is also a  
	background color parameter directly after the comma. Foreground and  
	background colors stick, once set, until they are terminated as described 
	above. You can set both the foreground and background color, change 
	just the foreground color later and then set both again if we receive a 
	message formatted this way. Note there is no way to just change the  
	background color alone. It's possible we may have multiple lines in the  
	given text so we'll have to watch for end of line characters since colors 
	reset upon a new line."
	| trapCharacter cr locs char |
	trapCharacter _ IRCClientColors colorTrapCharacter.
	cr _ Character cr.
	locs _ Dictionary new.
	1
		to: aTextOrString size
		do: [:index | 
			char _ aTextOrString at: index.
			(char = trapCharacter
					or: [char = cr])
				ifTrue: [locs at: index put: char]].
	^ self convertTextUsingMIRCColors: aTextOrString locs: locs