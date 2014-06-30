pane operations
resetPaneTabColors

	self swapper isNil
		ifTrue: [^ nil].
	(self swapper submorphs
		select: [:m | m isKindOf: PluggableButtonMorph])
		do: [:btn | btn offColor: Color white]