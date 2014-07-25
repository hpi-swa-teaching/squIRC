comparison / validation
isValid
	"By now only tests for nil-parameters. Might include
		further consistency checks later..."
	
	^ (self name notNil) and: 
		[self fullName notNil] and: 
		[self userName notNil] and: 
		[(self server notNil) and: [self server isValid]] and: 
		[self nick notNil]