actionButtons
addWindowToClose: aWindow

	windows ifNil: [windows := (OrderedCollection new)].
	windows add: aWindow.