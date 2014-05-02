as yet unclassified
selectedGroupIndex: index 
	selectedGroupIndex _ index.
	selectedServerIndex _ 0.
	selectedPortIndex _ 0.
	self changed: #selectedGroupIndex.
	self changed: #serverList.
	self changed: #portList.
	self updateServerAddressDisplay