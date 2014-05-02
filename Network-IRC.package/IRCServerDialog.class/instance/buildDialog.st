as yet unclassified
buildDialog
	| window |
	window _ (SystemWindow labelled: 'IRC Groups and Servers')
				model: self.
	self buildMorphIn: window.
	^ window