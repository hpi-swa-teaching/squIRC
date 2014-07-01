initialization
initializeOutgoingMessageHandlers
	"initilize the table mapping outgoing /commands to processing methods. Note that  
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
		{#away.		#processAwayCommand}.
		
		{#clear. #clearTextPane}. 
		{#inspect. #inspect}. 
		{#explore. #explore}. 
		{#traceon. #traceOn}. 
		{#traceoff. #traceOff}.
		{#docs. #docs}.
		{#playlist. #playlist}
		
	} do: [:pair | OutgoingMessageHandlers at: pair first asString put: pair second]