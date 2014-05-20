private
playSound: soundMethodSelector
	self advanceLastSoundTime.
	self perform: soundMethodSelector