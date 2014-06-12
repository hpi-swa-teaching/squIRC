as yet unclassified
informUser: aString during: aBlock 
	(MVCMenuMorph
		from: (SelectionMenu labels: '')
		title: aString)
		displayAt: Sensor cursorPoint
		during: [aBlock value]