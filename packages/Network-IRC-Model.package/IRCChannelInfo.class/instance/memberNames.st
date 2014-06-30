access
memberNames
	"names of the clients subscribing to this channel"
	^ members collect: [:each | each nick]