bounds-helpers
addClass: aClass

	| target |
	target := SClassMorph on: aClass.
	instance addMorph: target.
	^ target