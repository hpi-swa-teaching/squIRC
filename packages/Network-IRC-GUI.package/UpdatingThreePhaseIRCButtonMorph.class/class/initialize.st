as yet unclassified
initialize
	"UpdatingThreePhaseIRCButtonMorph initialize"
	| extent inset ircControlColor |
	extent := 12 @ 12.
	inset := 3.
	ircControlColor := Color lightGray.
	#('IrcCheckBoxOff' 'IrcCheckBoxOn' 'IrcCheckBoxPressed' )
		do: [:button | 
			| f r | 
			f := Form extent: extent depth: 16.
			f borderWidth: 1 color: Color black.
			r := f boundingBox insetBy: inset.
			button = 'IrcCheckBoxPressed'
				ifTrue: [f
						border: r
						width: 1
						fillColor: ircControlColor].
			button = 'IrcCheckBoxOn'
				ifTrue: [f
						fill: r
						rule: Form over
						fillColor: ircControlColor].
			ScriptingSystem saveForm: f atKey: button].
	#('IrcRadioButtonOff' 'IrcRadioButtonOn' 'IrcRadioButtonPressed' )
		do: [:button | 
			| f r c | 
			f := Form extent: extent depth: 16.
			r := f boundingBox.
			c := f getCanvas.
			c frameOval: r color: Color black.
			r := r insetBy: inset.
			button = 'IrcRadioButtonPressed'
				ifTrue: [c frameOval: r color: ircControlColor].
			button = 'IrcRadioButtonOn'
				ifTrue: [c fillOval: r color: ircControlColor].
			ScriptingSystem saveForm: f atKey: button]