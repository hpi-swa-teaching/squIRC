property-fullname
buildFullNamePane
	^ self
		entryPane: 'Full Name'
		set: #fullName:
		get: #fullName
		canEdit: true
		rightEdgeOffset: 0