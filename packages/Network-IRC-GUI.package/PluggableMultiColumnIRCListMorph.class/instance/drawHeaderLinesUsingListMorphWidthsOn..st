as yet unclassified
drawHeaderLinesUsingListMorphWidthsOn: aCanvas 
	| dividerColor hRect translate widths org dst cw vert horz vLineWidth pad |
	widths := self listMorph columnWidths.
	widths isNil ifTrue: [^self].
	dividerColor := Color lightGray.
	hRect := self headerRect.
	org := hRect bottomLeft.
	dst := hRect bottomRight.
	aCanvas
		line: org
		to: dst
		width: 2
		color: dividerColor.
	widths size > 1
		ifFalse: [^ self].
	translate := hRect topLeft.
	vert := headerHeight + self innerBounds height.
	vLineWidth := 1.
	pad := self listMorph columnPadding // 2.
	pad := pad - vLineWidth.
	horz := 0.
	1
		to: widths size - 1
		do: [:index | 
			cw := widths at: index.
			horz := horz + cw.
			horz := horz + pad.
			org := horz @ 0 translateBy: translate.
			dst := horz @ vert translateBy: translate.
			aCanvas
				line: org
				to: dst
				width: vLineWidth
				color: dividerColor]