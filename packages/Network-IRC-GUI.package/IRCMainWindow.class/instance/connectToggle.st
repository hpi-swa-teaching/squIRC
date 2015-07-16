actionButtons
connectToggle

	self currentlyConnecting ifFalse:
		[model connected ifFalse:
			[self currentlyConnecting: true.
			self update: #connected].
	
		[model connectToggle ifTrue: 
			[self setLabel: IRCMainWindow baseWindowTitle, 
						' [' , model nick , ' @ ' , model server , ']', self profileString]
		ifFalse: 
			[self setLabel: IRCMainWindow baseWindowTitle, self profileString].
	
		self currentlyConnecting: false.
		self update: #connected] fork]