logging
playlist
	
	| a |
	
	a _ Applescript doIt: 'tell application "iTunes"
	if player state = playing then
		set a to (get name of current track)
		set b to (get artist of current track)
		set c to (get album of current track)
		set d to (get year of current track)
	end if
	return b & "; " & c & "; " & a & "; " & d
	end tell'.
	a _ 'On iTunes now: ', a, Character cr asString.
	Transcript show: a.
	self acceptChannelString: a


