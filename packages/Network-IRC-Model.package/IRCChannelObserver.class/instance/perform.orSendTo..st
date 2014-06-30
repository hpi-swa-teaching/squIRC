sending
perform: aSelector orSendTo: rcvr 
	(self respondsTo: aSelector)
		ifTrue: [^ self perform: aSelector].
	^ rcvr perform: aSelector