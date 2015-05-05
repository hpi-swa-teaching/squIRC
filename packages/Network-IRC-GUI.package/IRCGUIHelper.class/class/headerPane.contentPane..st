layout helper
headerPane: aHeaderPane contentPane: aContentPane
| pane height insX insY |

	pane := self columnContainer.
	
	insX := self paneInsets x.
	insY := self paneInsets y.
	height := self rowHeight.
	
	pane addMorph: aHeaderPane
			fullFrame: (LayoutFrame 
							 fractions: (0 @ 0 corner: 1 @ 0)
							 offsets: 	(insX @ insY
								corner:   (insX negated @ (insY + height)))).
	pane addMorph: aContentPane
			fullFrame: (LayoutFrame 
							 fractions: (0 @ 0 corner: 1 @ 1)
							 offsets: 	(insX @ (insY * 2 + height)
								corner:   (insX @ insY) negated)).
								
	^pane