menu
buildItem: anAssociation

	^[ :item | item
		contents: anAssociation value value;
		target: self;
		selector: anAssociation key ].