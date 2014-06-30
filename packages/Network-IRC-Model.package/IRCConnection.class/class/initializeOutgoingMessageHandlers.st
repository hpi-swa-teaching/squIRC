message handlers
initializeOutgoingMessageHandlers
	"initilize the table mapping /commands to processing methods. Note that  
	these conversion are all performed as IRCProtocolMessage instance  
	methods."
	"IRCConnection initializeOutgoingMessageHandlers"
	"Keys in the dictionary should all be lowercase for later matching."
	OutgoingMessageHandlers := Dictionary new.
	{
		{#whois.	#processWhoisCommand}.
		{#nick.		#processNickCommand}.
		{#join.		#processJoinCommand}.
		{#part.		#processPartCommand}.
		{#away.		#processAwayCommand}
	} do: [:pair | OutgoingMessageHandlers at: pair first asString put: pair second]