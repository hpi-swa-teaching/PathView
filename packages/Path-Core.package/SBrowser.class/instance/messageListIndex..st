list reset
messageListIndex: anInteger
	| ref |
	super messageListIndex: anInteger.
	anInteger = 0 "Deselect"
		ifTrue: [self 
					currentSelectedMethod: nil;
					resetCaches].
	self selectedMessageName 
		ifNil: [
			(self cacheCoverage size = 0 and: [self cacheConcerns isEmpty]) 
				ifTrue: [^ self].
			self resetCaches]
		ifNotNil: [
			ref := MethodReference 
					class: self selectedClassOrMetaClass 
					selector: self selectedMessageName.
			(self currentSelectedMethod isNil or: 
				[(self currentSelectedMethod = ref) not])
					ifTrue: [self refreshAdditionalLists].
			self currentSelectedMethod: ref].
	anInteger = 0
		ifFalse: [SPMPathMap allInstances do: [:each |
					[(each 
						getMethodMorph: self selectedClassOrMetaClass 
						and: self selectedMessageName) highlight] on: Error do: []]].
	"Force refresh for pre- and postconditions to show up"
	((self preconditionsShown) or: [self postconditionsShown]) 
		ifTrue: [	self selectedMessage.
				self changed: #contents]