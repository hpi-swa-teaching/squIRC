actionButtons
buildPrvMsgButton

	^IRCGUIHelper 
			actionButtonOn: self
			label: 'prv msg'
			action: #talkTo
			balloonText: 'Send a Private Message'