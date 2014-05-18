as yet unclassified
isValid
	"By now only tests for nil-parameters. Might include
		further consistency checks later..."
	
	^ (self name notNil) and: 
		[self fullName notNil] and: 
		[self userName notNil] and: 
		[self server notNil] and: 
		[self nick notNil]