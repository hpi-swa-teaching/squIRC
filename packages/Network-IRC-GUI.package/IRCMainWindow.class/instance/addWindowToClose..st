actionButtons
addWindowToClose: aWindow

	windows ifNil: [windows := (OrderedCollection new). windows add: aWindow] 
			ifNotNil: [windows add: aWindow].