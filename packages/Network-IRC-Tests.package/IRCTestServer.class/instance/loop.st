private
loop
	self recieveBuffer: String new.
	[self run]
		whileTrue: [self processRequests]