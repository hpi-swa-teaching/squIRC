as yet unclassified
modeChanged: aString 
	"+/- v/o"
	| plus voiced opped topicControl |
	aString size = 2
		ifFalse: [^ nil].
	plus _ (aString at: 1)
				= $+.
	voiced _ (aString at: 2)
				= $v.
	opped _ (aString at: 2)
				= $o.
	topicControl _ (aString at: 2) = $t.
	voiced
		ifTrue: [self voice: plus].
	opped
		ifTrue: [self operator: plus].
	topicControl ifTrue: [self topic: plus]