profile name
buildProfileNamePane
	^ self
		entryPane: 'Profile Name'
		set: #profileName:
		get: #profileName
		canEdit: true
		rightEdgeOffset: 0