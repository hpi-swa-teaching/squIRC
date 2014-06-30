actionButtons
connectToggle
	| titleString |
	titleString := IRCMainWindow baseWindowTitle.
	model connectToggle ifTrue: [
		titleString := titleString, ' [' , model nick , ' @ ' , model server , ']'].
	self setLabel: titleString