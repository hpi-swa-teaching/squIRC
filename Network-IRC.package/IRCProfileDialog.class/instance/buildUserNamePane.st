user name
buildUserNamePane
	^ self
		entryPane: 'User Name'
		set: #userName:
		get: #userName
		canEdit: true
		rightEdgeOffset: 0