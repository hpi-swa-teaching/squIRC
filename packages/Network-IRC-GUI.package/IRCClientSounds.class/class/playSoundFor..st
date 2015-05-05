private
playSoundFor: soundMethodSelector 
	(IRCOptionsManagement option: #playSoundOnMessage)
		ifFalse: [^ nil].
	self lastSoundTime isNil
		ifTrue: [self playSound: soundMethodSelector]
		ifFalse: [self currentTimeValue > self lastSoundTime
				ifTrue: [self playSound: soundMethodSelector]]