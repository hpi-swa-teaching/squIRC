read me
readMe
	"To add new sounds, to the following.
	
Add a new class method to IRCClientSounds.  This method should be called whenever you want to perform your new sound.

Note that #playSoundFor: method will check that the sound option for IRC client is enabled, so you do not need to concern yourself with that in your sender method.

Create the method that will play your new sound in the 'sound definitions' class method protocol.  By convention, I've been using the same method name prefix as the one defined in the API protocol.
"