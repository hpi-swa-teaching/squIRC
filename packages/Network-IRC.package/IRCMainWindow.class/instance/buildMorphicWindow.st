initialization
buildMorphicWindow
	| buttonHeight consolePane rootPane |
	
	rootPane := IRCGUIHelper columnContainer.
	
	buttonHeight := IRCGUIHelper rowHeight.
	rootPane
		addMorph: self buildActionButtons
		fullFrame: (LayoutFrame
							fractions: (0 @ 0 corner: 1 @ 0)
							offsets: (0 @ 0 corner: 0 @ buttonHeight)).
	self swapper: self buildSwapper.
	rootPane
		addMorph: self swapper
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ buttonHeight corner: 0 @ 0)).
	consolePane := self buildCombinedConsoleTextAndInputPane.
	self
		addSwapPane: consolePane
		named: 'console'
		hidden: false
		closeable: false
		swapModel: self.
	self swapper defaultPaneName: 'console'.
	self swapper setMoverButtonColors: self moverButtonColor.
	
	self addMorph: rootPane
			fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ 0 corner: 0 @ 0)).