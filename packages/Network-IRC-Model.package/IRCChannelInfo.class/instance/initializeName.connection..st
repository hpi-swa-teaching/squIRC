private-initialization
initializeName: aString connection: aConnection 
	name _ aString.
	members _ SortedCollection sortBlock: [:a :b | a < b].
	subscribers _ IdentitySet new.
	connection _ aConnection