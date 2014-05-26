as yet unclassified
onChannel: aChannel

	channel := aChannel.
	userList := #().
	userIndex := 0.
	channel addDependent: self.
	self refreshUserList.