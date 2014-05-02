topic pane
updateTopicPaneState
	self canChangeTopic
		ifTrue: [self enableTopicEdits]
		ifFalse: [self disableTopicEdits]