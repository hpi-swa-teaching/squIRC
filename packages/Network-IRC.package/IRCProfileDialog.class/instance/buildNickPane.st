property-nick
buildNickPane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'Nick'  
						backLabel: 'your nick...' 
						textGetter: #nick 
						textSetter: #nick: 
						color: IRCGUIHelper dialogBackgroundColor
						tagColumnWidth: 100
						tagInset: 7