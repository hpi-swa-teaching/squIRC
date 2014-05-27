mIRC lines
extractGroupNameFrom: aString 
	| start colonPos end |
	start := 1.
	colonPos := aString indexOf: $: startingAt: start.
	colonPos > 0
		ifTrue: [end := colonPos - 1.
			^ aString copyFrom: start to: end]
		ifFalse: [^ ''"none defined"]