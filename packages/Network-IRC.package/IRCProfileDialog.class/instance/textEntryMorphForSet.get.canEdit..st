common entry
textEntryMorphForSet: t1 get: t2 canEdit: t3 
	| t4 t5 t6 |
	t5 := t3
				ifTrue: [PluggableTextMorph]
				ifFalse: [PluggableTextMorph].
	t6 := t3
				ifTrue: [Color white]
				ifFalse: [Color transparent].
	t4 := t5
				on: self
				text: t2
				accept: t1.
	t4 color: t6;
		 acceptOnCR: true;
		 hideScrollBarsIndefinitely.
	^ t4