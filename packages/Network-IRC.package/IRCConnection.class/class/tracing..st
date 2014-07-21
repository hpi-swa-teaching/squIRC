diagnostic
tracing: aBoolean 
	Tracing := aBoolean.
	self tracePrivate: 'Tracing turned ', (Tracing ifTrue: ['ON'] ifFalse: ['OFF'])