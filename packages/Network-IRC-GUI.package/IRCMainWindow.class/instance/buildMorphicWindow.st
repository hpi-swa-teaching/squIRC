initialization
buildMorphicWindow

	| contentMorph |

	self model addDependent: self.
	self name: 'IRCWin'.
	contentMorph := IRCGUIHelper headerPane: self dockingBar 
									 contentPane: self buildSwapperPane.
	self addMorph: contentMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)
								 offsets: (0 @ 0 corner: 0 @ 0)).
								
	self swapper 
		addPane: self buildCombinedConsoleTextAndInputPane
		named: 'console'
		hidden: false
		closeable: false
		swapModel: self