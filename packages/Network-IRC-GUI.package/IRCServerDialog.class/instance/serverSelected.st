exit management
serverSelected
	"Okay button pressed.  If our selection is valid, close the window and tell our caller."
	
	self validServerSelection
		ifTrue: [self topView delete.
					parentDialog 
						ifNotNil: [parentDialog 
										useValuesFromServer: self selectedServer
										port: self selectedPort]]