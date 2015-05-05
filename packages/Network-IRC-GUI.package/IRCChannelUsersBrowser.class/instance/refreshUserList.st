as yet unclassified
refreshUserList
	"update the user list from the channel"
	|oldName |

	(userIndex > 0) ifTrue: [
		oldName := userList at: userIndex ].

	userList := channel memberNames asSortedCollection asArray.
	userIndex := 0.

	oldName ifNotNil: [
		"try to select the same user again"
		userIndex := userList indexOf: oldName ].

	self changed: #userList.
	self changed: #userIndex.
