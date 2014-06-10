as yet unclassified
connectionStateChanged
	connectedState := connection connected.
	self showConfigDenial: connectedState.
	self disableProfileSelectButton: connectedState.
