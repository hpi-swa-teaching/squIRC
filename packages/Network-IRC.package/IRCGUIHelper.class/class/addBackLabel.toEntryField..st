private
addBackLabel: aString toEntryField: entry 
	| emptyText |
	emptyText := TextMorph new.
	emptyText contents: aString.
	emptyText
		beAllFont: (StrikeFont familyName: #ComicPlain size: 12);
		 color: Color lightGray.
	emptyText lock.
	entry tagWhenEmpty: emptyText