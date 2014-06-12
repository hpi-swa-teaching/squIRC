as yet unclassified
buildDialog
	| window |
	window := (SystemWindow labelled: 'IRC Groups and Servers')
				model: self.
	self buildGUIIn: window.
	^ window