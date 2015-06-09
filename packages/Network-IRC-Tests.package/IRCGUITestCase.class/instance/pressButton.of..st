utility
pressButton: aName of: aMorph
| button |
	
	button := self deepFindSubmorph: aName in: aMorph.
	
	self shouldnt: [button isNil].
	self should: [button isKindOf: PluggableButtonMorph].
	
	button performAction.
	
	