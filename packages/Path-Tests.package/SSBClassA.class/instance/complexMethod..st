as yet unclassified
complexMethod: anObject
	"blub"
	| b |
	self myValue: anObject.
	self unaryMethod 
		ifTrue: [
			b := SSBClassB on: self.
			^ b compute]
		ifFalse: [self error: 'Should not happen.'].