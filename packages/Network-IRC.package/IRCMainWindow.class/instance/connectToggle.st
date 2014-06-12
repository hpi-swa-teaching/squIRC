actions
connectToggle
	| titleString |
	titleString _ IRCMainWindow baseWindowTitle.
	model connectToggle ifTrue: [
		titleString _ titleString, ' [' , model nick , ' @ ' , model server , ']'].
	self setLabel: titleString