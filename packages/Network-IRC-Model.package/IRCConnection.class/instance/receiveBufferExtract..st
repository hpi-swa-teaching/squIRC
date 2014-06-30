network IO
receiveBufferExtract: anIndex
	| string |
	
	string := self receiveBuffer 
							copyFrom: 1
							to: anIndex.
	self receiveBuffer: 
			(self receiveBuffer 
							copyFrom: anIndex + 1
							to: self receiveBuffer size).
	^string