as yet unclassified
refreshUserList
	"update the user list from the channel"
	|oldName |

	(userIndex > 0) ifTrue: [
		oldName _ userList at: userIndex ].

	userList _ channel memberNames asSortedCollection asArray.
	userIndex _ 0.

	oldName ifNotNil: [
		"try to select the same user again"
		userIndex _ userList indexOf: oldName ].

	self changed: #userList.
	self changed: #userIndex.
