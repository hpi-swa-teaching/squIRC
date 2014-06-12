*network-irc-gui
step
	| newBoolean |
	super step.
	state == #pressed
		ifTrue: [^ self].
	newBoolean _ self getNewBoolean.
	newBoolean == self isOn
		ifFalse: [self
				state: (newBoolean == true
						ifTrue: [#on]
						ifFalse: [#off])]