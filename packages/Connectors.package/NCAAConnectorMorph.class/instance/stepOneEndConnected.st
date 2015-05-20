stepping and presenter
stepOneEndConnected
	"Called upon step in OneEndConnected state."

	(self hasProperty: #inputOwnerChanged)
		ifTrue: [ self removeProperty: #inputOwnerChanged.
			WorldState addDeferredUIMessage: [ self triggerEtoyEvent: #attachmentOwnerChanged ]].