dialog creation
openDialogLabeled: aString
	| dialogue |
	dialogue := SystemWindow new.
	dialogue model: self.
	self buildEditProfileDialogOn: dialogue.
	dialogue setLabel: aString.
	canceled := false.
	dialogue openInWorld