as yet unclassified
drawHeaderStringsUsingListMorphWidthsOn: aCanvas 
	| hRect translate posn widths horz pad strMorph cw |
	widths := self listMorph columnWidths.
	(widths isNil or: [headerStrings == nil]) ifTrue: [^ self].
	hRect := self headerRect.
	translate := hRect topLeft + (2 @ 2).
	horz _ 0.
	pad _ 0.
	1 to: headerStrings size do: [:index |
		strMorph _ headerStrings at: index.
		posn _ horz @ 0 translateBy: translate.
		strMorph
			position: posn;
			drawOn: aCanvas.
		cw _ widths at: index.
		horz _ horz + cw + pad
		]