initialization
initializeIncomingMessageHandlers
	"initilize the table mapping incoming IRC commands to processing methods"
	"IRCConnection initializeIncomingMessageHandlers"
	IncomingMessageHandlers := Dictionary new.
	{
		{#ping.		#processPing:}.
		{#join.		#processJoin:}.
		{#nick.		#processNickChanged:}.
		{#part.		#processPart:}.
		{#quit.		#processQuit:}.
		{#privmsg.	#processPrivmsg:}.
		{#notice.	#processPrivmsg:}.
		{#topic.		#processTopic:}.
		{#invite.	#processInvite:}.
		{#mode.		#processMode:}.
		{263.		#processChannelsServerLoadTooHigh:}.
		{301.		#processReplyAway:}.
		{307.		#processNickIdentified:}.
		{311.		#processReplyWhoIsUser:}.
		{312.		#processReplyWhoIsServer:}.
		{317.		#processIdleTime:}.
		{318.		#processEndOfWhoIs:}.
		{319.		#processWhoIsChannels:}.
		{321.		#processChannelListStart:}.
		{322.		#processChannelList:}.
		{323.		#processChannelListEnd:}.
		{331.		#processNoTopic:}.
		{332.		#processTopic:}.
		{353.		#processNamReply:}.
		{372.		#processMotd:}.
		{377.		#processMotd:}.
		{375.		#processMotdStart:}.
		{376.		#processMotdEnd:}.
		
	} do: [:pair | IncomingMessageHandlers at: pair first asString put: pair second]