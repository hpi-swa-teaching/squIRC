utility
findWindowNamed: aName
| window |

	window := self currentWorld submorphNamed: aName ifNone: [nil].
	self shouldnt: [window isNil].
	^window