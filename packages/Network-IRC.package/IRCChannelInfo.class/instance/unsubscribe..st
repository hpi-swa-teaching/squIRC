access
unsubscribe: anObject
	"unsubscribe anObject"
	subscribers remove: anObject.
	subscribers isEmpty ifTrue: [ connection leave: name ].