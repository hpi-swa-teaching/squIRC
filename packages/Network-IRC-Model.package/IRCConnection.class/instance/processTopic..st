private-message handling
processTopic: aMessage 
	"change a channel topic"

	| args |
	args := aMessage arguments.
	args size < 2 
		ifTrue: 
			["malformed message"

			^self].
	(self channelInfo: (args at: args size - 1)) 
		topic: (self markIfURL: (args at: args size) startingAt: 1)