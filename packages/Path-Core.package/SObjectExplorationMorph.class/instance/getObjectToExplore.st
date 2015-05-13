morphic
getObjectToExplore

	| objects |
	self objectToExplore ifNotNil: [^ self objectToExplore].
	objects := self callNode explore: self kindOfObject.
	objects size = 1 ifTrue: [
		self kindOfObject == #arguments
			ifTrue: [^ objects first at: self objectIndex].
		^ objects first].
	^ objects