property-nick
buildNickPane

	^IRCGUIHelper entryFieldRowFor: self 
						tag: 'Nick'  
						backLabel: 'your nick...' 
						textGetter: #nick 
						textSetter: #nick:
						tagColumnWidth: 100