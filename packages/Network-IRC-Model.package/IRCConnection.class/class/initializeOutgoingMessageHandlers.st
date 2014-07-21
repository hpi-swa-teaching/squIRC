initialization
initializeOutgoingMessageHandlers
	"initilize the table mapping outgoing /commands to processing methods. Note that  
	these conversions are all performed as IRCProtocolMessage instance  
	methods."
	"Keys in the dictionary should all be lowercase for later matching."
	OutgoingMessageHandlers := Dictionary new.
	{
		{#whois.	#handleOutWhoisCommand:}.
		{#nick.		#handleOutNickCommand:}.
		{#join.		#handleOutJoinCommand:}.
		{#away.	#handleOutAwayCommand:}.
			
		{#quote.	#handleOutQuoteCommand:}.
		
		"former local commands"
		{#clear. 	#handleOutClearCommand:}.
		{#traceon. 	#handleOutTraceOnCommand:}. 
		{#traceoff. #handleOutTraceOffCommand:}.
		{#docs. 	#handleOutDocsCommand:}.
		
		"former special commands"
		{#action.	#handleOutActionCommand:}.
		{#dcc.		#handleOutDccCommand:}.
		{#sed.		#handleOutSedCommand:}.
		{#me.		#handleOutMeCommand:}.
		{#finger.	#handleOutFingerCommand:}.
		{#version.	#handleOutVersionCommand:}
		
	} do: [:pair | OutgoingMessageHandlers at: pair first asString put: pair second]