as yet unclassified
headerRect
	^ (scroller bounds topLeft translateBy: 0 @ headerHeight negated)
		corner: (scroller bounds topLeft translateBy: scroller bounds width @ 0)