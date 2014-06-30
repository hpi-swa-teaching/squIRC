options defined
defaultOptionDescriptions
	"IRCOptionsManagement initializeOptions"
	"IRCOptionsManagement optionsIntegrityCheck"
	"This is where we define options."
	| dict |
	dict _ Dictionary new.
	dict at: #acceptChannelInvites put: 'Accept invites';
		 at: #playSoundOnMessage put: 'Play sound on message';
		 at: #privateMessageOpensNewWindow put: 'New windows for private messages';
		 at: #showJoinsInChannel put: 'Show joins';
		 at: #showPartsInChannel put: 'Show parts';
		 at: #showQuitsInChannel put: 'Show quits';
		 at: #showModeChangesInChannel put: 'Show mode changes';
		 at: #usemIRCColors put: 'Use MIRC colors';
		 at: #tabbedChannelWindows put: 'Tab channel windows';
		 at: #logChannelTraffic put: 'Log channels';
		 at: #saveChannelLists put: 'Auto-save channels list';
		 at: #forceChannelsToHaveLeadingPoundSign put: 'Add # to channel names';
		 at: #timeStampMessages put: 'Prepend time stamps to messages'.
	^ dict