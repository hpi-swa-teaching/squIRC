private
initializeSoundsCaches
	"IRCClientSounds initializeSoundsCaches"
	Sounds _ Dictionary new.
	Sounds 
		 at: 'pulse1' put: self generatePulseSound1;
		 at: 'pulse2' put: self generatePulseSound2;
		 at: 'pulse3' put: self generatePulseSound3