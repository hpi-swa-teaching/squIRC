initialization
buildMorphicWindow

	self model addDependent: self.
	
	self name: 'IRCWin'.
	
	self addMorph: (IRCGUIHelper 	headerPane: self buildActionButtons 
											contentPane: self buildSwapperPane)
			fullFrame: (LayoutFrame
								fractions: (0 @ 0 corner: 1 @ 1)
								offsets: (0 @ 0 corner: 0 @ 0)).
								
	(self swapper) 
		addPane: self buildCombinedConsoleTextAndInputPane
		named: 'console'
		hidden: false
		closeable: false
		swapModel: self