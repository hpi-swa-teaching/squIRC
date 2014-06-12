diagnostic
trace: aString 
	"Will log <aString> if tracing is on.  
	Turns on and off via /traceon and /traceoff commands."
	self tracing
		ifFalse: [^ self].
	self tracePrivate: aString