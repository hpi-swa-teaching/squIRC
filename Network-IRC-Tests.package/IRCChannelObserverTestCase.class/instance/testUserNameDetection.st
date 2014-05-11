tests
testUserNameDetection
	| channelObserver |
	
	channelObserver := IRCChannelObserver new.
	
	self shouldnt: [channelObserver message: 'Heute ist ein schöner Tag' contains: 'kein'].
	self shouldnt: [channelObserver message: 'PalaberPalaberSunnyBoyPalaber' contains: 'SunnyBoy'].
	self shouldnt: [channelObserver message: 'UltimateMasterUndNochMehr' contains: 'UltimateMaster'].
	self shouldnt: [channelObserver message: 'OberweserDampfschiffKapitän' contains: 'Kapitän'].
	
	self should: [channelObserver message: 'Hey Rotontin there is bla' contains: 'Rotontin'].
	self should: [channelObserver message: 'Rotontin how are you' contains: 'Rotontin'].
	self should: [channelObserver message: 'Im talking to Rotontin' contains: 'Rotontin'].
	self should: [channelObserver message: 'Ask CrescentFresh!' contains: 'CrescentFresh'].
	self should: [channelObserver message: 'asfdrefg CrescentFresh, sdfgdfg' contains: 'CrescentFresh'].