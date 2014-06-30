options defined
defaultOptionHelp
	"IRCOptionsManagement optionsIntegrityCheck"
	"This is where we define options."
	| dict |
	dict _ Dictionary new.
	dict at: #acceptChannelInvites put: 'Accept channel invites';
		 at: #playSoundOnMessage put: 'Play sound on new message arrival.  This is handy when you have the window in the background.';
		 at: #privateMessageOpensNewWindow put: 'Open new window for private messages';
		 at: #showJoinsInChannel put: 'Show joins in channel window';
		 at: #showPartsInChannel put: 'Show parts in channel window';
		 at: #showQuitsInChannel put: 'Show quits in channel window';
		 at: #showModeChangesInChannel put: 'Show mode changes in channel window';
		 at: #usemIRCColors put: 'Use MIRC colors decoding in channel window';
		 at: #tabbedChannelWindows put: 'When true, channels share same window using tabs';
		 at: #logChannelTraffic put: 'Log channel traffic in external file';
		 at: #saveChannelLists put: 'Save channels list upon completion to external file';
		 at: #forceChannelsToHaveLeadingPoundSign put: 'Add # to channel names as required';
		 at: #timeStampMessages put: 'Prepend a time stamp to every message in a channel window'.
	^ dict