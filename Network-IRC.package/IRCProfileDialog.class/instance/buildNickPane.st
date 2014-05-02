nick
buildNickPane
	^ self
		entryPane: 'Nick'
		set: #nick:
		get: #nick
		canEdit: true
		rightEdgeOffset: 0