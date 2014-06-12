private
endOfURL: urlTextOrString startingAt: urlStart
	|   urlEnd urlString |

	urlString _ urlTextOrString asString.
	urlEnd _  urlString asString findString: ' ' startingAt: urlStart.
	urlEnd == 0
		ifTrue: [urlEnd _  urlString size ]
		ifFalse: [urlEnd _ urlEnd - 1].

	(urlString at: urlEnd) isSeparator ifTrue: [urlEnd _ urlEnd - 1].

	urlEnd to: urlStart by: -1 do: [ :index |
		#($] $) $. $, $> $? $" $' ) detect: [:each | each == (urlString at: index)] ifNone: [^index ].
	].
	^urlEnd 