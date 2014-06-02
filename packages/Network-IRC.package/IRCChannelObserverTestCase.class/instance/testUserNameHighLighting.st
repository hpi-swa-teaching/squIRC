tests
testUserNameHighLighting
	| testNick testMessage |
	
	testNick := 'Nick'.
	
	testMessage := 'Hello Nick' asText.
	channelObserver highlightUser: testNick in: testMessage. 
	1 to: 5 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray isEmpty]].
	7 to: 10 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray first emphasisCode == TextEmphasis bold emphasisCode and: [
				attributesArray second color hash == (IRCClientColors userNameColorFromHash: testNick) hash]]].
	
	testMessage := 'Nick: how are you doing?' asText.
	channelObserver highlightUser: testNick in: testMessage. 
	1 to: 4 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray first emphasisCode == TextEmphasis bold emphasisCode and: [
				attributesArray second color hash == (IRCClientColors userNameColorFromHash: testNick) hash]]].
	
	testMessage := 'Hi Nick, good to see you, Nick' asText.
	channelObserver highlightUser: testNick in: testMessage. 
	4 to: 7 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray first emphasisCode == TextEmphasis bold emphasisCode and: [
				attributesArray second color hash == (IRCClientColors userNameColorFromHash: testNick) hash]]].
	27 to: 30 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray first emphasisCode == TextEmphasis bold emphasisCode and: [
				attributesArray second color hash == (IRCClientColors userNameColorFromHash: testNick) hash]]].
	
	testMessage := 'hi nick' asText.
	channelObserver highlightUser: testNick in: testMessage. 
	1 to: 2 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray isEmpty]].
	4 to: 7 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray isEmpty]].
	
	testMessage := 'hi otherNick' asText.
	channelObserver highlightUser: testNick in: testMessage. 
	1 to: 2 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray isEmpty]].
	4 to: 12 do: [ :each |
		self should: [ | attributesArray |
			attributesArray := testMessage attributesAt: each forStyle: TextStyle default.
			attributesArray isEmpty]].