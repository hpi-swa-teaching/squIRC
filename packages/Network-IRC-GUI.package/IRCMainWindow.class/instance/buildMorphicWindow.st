initialization
buildMorphicWindow

	| contentMorph |

	self model addDependent: self.
	contentMorph := self buildContentMorph.
	self addMorph: contentMorph
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).						
	self swapper 
		addPane: self buildCombinedConsoleTextAndInputPane
		named: 'console'
		hidden: false
		closeable: false
		swapModel: self