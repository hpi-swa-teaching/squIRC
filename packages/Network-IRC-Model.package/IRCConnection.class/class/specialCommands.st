message handlers
specialCommands
	"Answers the list of special commands that require some additional  
	translation before they are sent."
	"See http://www.irchelp.org/irchelp/rfc/ctcpspec.html"
	"We should rewrite these guys using handlers as well, at some point. -  
	sbw"
	^ {'action'. 'dcc'. 'sed'. 'me'. 'finger'. 'version'}