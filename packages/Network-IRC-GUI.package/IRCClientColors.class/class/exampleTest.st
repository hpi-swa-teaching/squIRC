mIRC colors
exampleTest
	"IRCClientColors exampleTest"
	| testMessage stream trap part text |
	testMessage := 'This should be a simple string.
And this is the second line.'.
	stream := WriteStream on: ''.
	trap := IRCClientColors colorTrapCharacter.
	part := testMessage copyFrom: 1 to: 18.
	stream nextPutAll: part.
	stream nextPut: trap.
	stream nextPutAll: '04'.
	part := testMessage copyFrom: 19 to: 38.
	stream nextPutAll: part.
	stream nextPut: trap.
	stream nextPutAll: '02,09'.
	part := testMessage copyFrom: 39 to: 48.
	stream nextPutAll: part.
	stream nextPut: trap.
	part := testMessage copyFrom: 49 to: testMessage size.
	stream nextPutAll: part.
	text := IRCChannelObserver convertTextUsingMIRCColors: stream contents.
	(Workspace new contents: text)
		openLabel: 'test'