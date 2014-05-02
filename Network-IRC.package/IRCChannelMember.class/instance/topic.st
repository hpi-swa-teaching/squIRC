as yet unclassified
topic
	"Better lazy initialize since we just added this var."
	topic == nil ifTrue: [self topic: false].
	^ topic