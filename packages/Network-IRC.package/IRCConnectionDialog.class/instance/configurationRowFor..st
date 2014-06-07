configuration
configurationRowFor: specArray 
	| alignPane |
	alignPane := IRCGUIHelper
				entryFieldRowFor: connection
				tag: specArray first
				backLabel: specArray second
				textGetter: specArray third
				textSetter: specArray fourth
				color: IRCGUIHelper dialogBackgroundColor
				tagColumnWidth: 60
				tagPad: 20
				tagInset: 2.
	^ alignPane