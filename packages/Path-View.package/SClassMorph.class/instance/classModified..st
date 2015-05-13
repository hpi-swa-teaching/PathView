event handling
classModified: anEvent

	anEvent isRemoved ifTrue: [ self dismissViaHalo ].
	anEvent isModified
		ifTrue: [
			self connections do: #update.
			self update ].