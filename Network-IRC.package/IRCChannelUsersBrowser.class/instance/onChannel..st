as yet unclassified
onChannel: aChannel
	channel _ aChannel.
	userList _ #().
	userIndex _ 0.

	channel addDependent: self.
	self refreshUserList.