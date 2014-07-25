message handlers
initializeLocalMessageHandlers
	"initilize the table mapping local commands to processing methods"
	"IRCConnection initializeLocalMessageHandlers"
	"Keys in the dictionary should all be lowercase for later matching."
	LocalMessageHandlers _ Dictionary new.
	{
		{#clear. #clearTextPane}. 
		{#inspect. #inspect}. 
		{#explore. #explore}. 
		{#traceon. #traceOn}. 
		{#traceoff. #traceOff}.
		{#docs. #docs}.
		{#playlist. #playlist}
	}
		do: [:pair | LocalMessageHandlers at: pair first asString put: pair second]