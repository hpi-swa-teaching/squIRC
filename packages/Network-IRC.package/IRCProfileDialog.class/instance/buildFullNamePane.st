property-fullname
buildFullNamePane

	^ IRCGUIHelper entryFieldRowFor: self 
						tag: 'Full Name'  
						backLabel: 'your name...' 
						textGetter: #fullName 
						textSetter: #fullName: 
						color: Color red 
						tagColumnWidth: 85 
						tagPad: 10
						tagInset: 5
	"^ self
		entryPane: 'Full Name'
		set: #fullName:
		get: #fullName
		canEdit: true
		rightEdgeOffset: 0"