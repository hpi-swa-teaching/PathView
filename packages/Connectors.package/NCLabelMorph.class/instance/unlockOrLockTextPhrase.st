menus
unlockOrLockTextPhrase
	^ self isTextForcedLocked
		ifTrue: ['unlock text' translated]
		ifFalse: ['lock text' translated] 