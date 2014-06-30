as yet unclassified
populateOptionsFromProfile: anIRCConnectionProfile 
	anIRCConnectionProfile options keysAndValuesDo: [:key :value |
		self option: key value: value]