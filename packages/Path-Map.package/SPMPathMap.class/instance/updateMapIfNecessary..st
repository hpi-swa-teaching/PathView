updating
updateMapIfNecessary: aSystemEvent
	aSystemEvent isAdded 
		ifTrue: [^ self checkAddedEvent: aSystemEvent].
	aSystemEvent isRemoved 
		ifTrue: [^ self checkRemovedEvent: aSystemEvent].
	aSystemEvent isRecategorized 
		ifTrue: [^ self checkRecategorizedEvent: aSystemEvent].
	aSystemEvent isRenamed 
		ifTrue: [^ self checkRenamedEvent: aSystemEvent].
	aSystemEvent isModified
		ifTrue: [^ self checkModifiedEvent: aSystemEvent]