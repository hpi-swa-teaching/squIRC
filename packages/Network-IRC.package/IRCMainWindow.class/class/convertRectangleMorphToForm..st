stored graphics
convertRectangleMorphToForm: rectMorph
	| canvas orgPosn |
	orgPosn := rectMorph position copy.
	rectMorph position: 0 @ 0.
	canvas := FormCanvas extent: rectMorph extent depth: 32.
	rectMorph drawOnCanvas: canvas.
	rectMorph position: orgPosn.
	^ canvas form