as yet unclassified
connectionStateChanged
	connectedState _ connection connected.
	self showConfigDenial: connectedState.
	self disableProfileSelectButton: connectedState.
