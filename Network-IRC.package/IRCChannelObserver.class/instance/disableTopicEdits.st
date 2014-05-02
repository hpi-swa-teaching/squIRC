topic pane
disableTopicEdits
	| pane color |
	pane _ self findTopicMorph.
	color _ IRCClientColors channelTopicPane.
	pane color: color.
	pane replaceSetTextSelector: nil