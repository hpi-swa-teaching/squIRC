menu
profileMenu
	
	^[ :item | item
		contents: 'Profiles';
		subMenuUpdater: self
		selector: #YOLO: ]