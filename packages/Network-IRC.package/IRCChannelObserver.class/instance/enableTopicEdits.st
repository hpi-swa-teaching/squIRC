topic pane
enableTopicEdits
	| pane color |
	pane _ self findTopicMorph.
	color _ IRCClientColors channelTopicPaneEnabled.
	pane color: color.
	pane replaceSetTextSelector: #changeTopic: