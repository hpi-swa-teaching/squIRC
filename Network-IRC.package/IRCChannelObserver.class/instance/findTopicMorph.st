topic pane
findTopicMorph
	| morphs |
	morphs _ self myDependents
				select: [:m | m isMorph].
	^ morphs
		detect: [:m | m knownName = 'topicPane']