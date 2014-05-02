initialization
buildMorphicWindow
	| buttonHeight consolePane |
	buttonHeight := self buttonHeight.
	self
		addActionButtonsWithFractions: (0 @ 0 corner: 1 @ 0)
		offsets: (0 @ 0 corner: 0 @ buttonHeight).
	swapper := self buildSwapper.
	self
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
	self swapper fillWithRamp: self paneColorRamp oriented: 6;
		
		setMoverButtonColors: self moverButtonColor