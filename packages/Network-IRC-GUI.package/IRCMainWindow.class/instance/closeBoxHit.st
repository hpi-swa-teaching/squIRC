open/close
closeBoxHit

	windows ifNotNil: [windows reversed do: [ :each | each closeBoxHit]].
 	super closeBoxHit