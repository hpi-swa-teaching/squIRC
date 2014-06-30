private
generatePulseSound2
	"(IRCClientSounds generatePulseSound2) play"
	| snd |
	snd _ FMSound new.
	snd
		addEnvelope: (VolumeEnvelope exponentialDecay: 0.7).
	snd
		addEnvelope: (PitchEnvelope exponentialDecay: 0.6).
	^ snd
		setPitch: 1238
		dur: 0.02
		loudness: 0.5