options defined
defaultOptionValues
	"IRCOptionsManagement optionsIntegrityCheck"
	"This is where we define options."
	| dict |
	dict _ Dictionary new.
	dict at: #acceptChannelInvites put: true;
		 at: #playSoundOnMessage put: false;
		 at: #privateMessageOpensNewWindow put: true;
		 at: #showJoinsInChannel put: true;
		 at: #showPartsInChannel put: true;
		 at: #showQuitsInChannel put: true;
		 at: #showModeChangesInChannel put: true;
		 at: #usemIRCColors put: false;
		 at: #tabbedChannelWindows put: true;
		 at: #logChannelTraffic put: false;
		 at: #saveChannelLists put: true;
		 at: #forceChannelsToHaveLeadingPoundSign put: true;
		 at: #timeStampMessages put: false.
	^ dict