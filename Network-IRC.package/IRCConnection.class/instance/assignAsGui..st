UI
assignAsGui: someView
	gui _ someView.
	self subscribeToProtocolMessages: self.
