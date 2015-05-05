private
generatePulseSound1
	"(IRCClientSounds generatePulseSound1) play"
	| snd |
	snd _ FMSound new.
	snd
		addEnvelope: (VolumeEnvelope exponentialDecay: 0.96).
	snd
		addEnvelope: (PitchEnvelope exponentialDecay: 0.98).
	^ snd
		setPitch: 2938
		dur: 0.02
		loudness: 0.5