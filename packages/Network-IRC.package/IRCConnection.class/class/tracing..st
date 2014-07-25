diagnostic
tracing: aBoolean 
	Tracing _ aBoolean.
	self tracePrivate: 'Tracing turned ', (Tracing ifTrue: ['ON'] ifFalse: ['OFF'])