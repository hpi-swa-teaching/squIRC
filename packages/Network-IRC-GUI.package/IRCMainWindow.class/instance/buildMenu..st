menu
buildMenu: anAssociation
	
	^[ :item | item
		contents: anAssociation value;
		subMenuUpdater: self
		selector: anAssociation key]