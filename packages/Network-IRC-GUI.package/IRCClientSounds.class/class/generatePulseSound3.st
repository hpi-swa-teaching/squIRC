private
generatePulseSound3
	"(IRCClientSounds generatePulseSound3) play"
	| snd p |
	snd _ FMSound new.
	snd
		addEnvelope: (VolumeEnvelope exponentialDecay: 0.3).
	p _ Array
				with: 0 @ 0
				with: 100 @ 1.0
				with: 250 @ 0.7
				with: 400 @ 1.0
				with: 500 @ 0.
	snd
		addEnvelope: (PitchEnvelope
				points: p
				loopStart: 2
				loopEnd: 4).
	^ snd
		setPitch: 1498
		dur: 0.1
		loudness: 0.5