as yet unclassified
selectedServerIndex: index 
	selectedServerIndex _ index.
	selectedPortIndex _ 0.
	self changed: #selectedServerIndex.
	self changed: #portList.
	self updateServerAddressDisplay

