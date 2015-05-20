private
selectorFor: type in: stateName
	"Answer a selector that I understand for handling an event of type 'type', or nil."

	| selector |
	"first try full selector"
	selector := self fullSelectorFor: type in: stateName.
	Symbol hasInterned: selector ifTrue: [ :sym |
		(self respondsTo: sym)
			ifTrue: [ ^sym ]].

	"then try short selector"
	selector := self shortSelectorFor: type in: stateName.
	Symbol hasInterned: selector ifTrue: [ :sym |
		(self respondsTo: sym)
			ifTrue: [ ^sym ]].
	
	"otherwise, I don't understand it."
	^nil
