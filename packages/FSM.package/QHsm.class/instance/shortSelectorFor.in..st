private
shortSelectorFor: type in: stateName
	| fullSelector |
	fullSelector := String new: 6 + stateName size.	"stateSelector:"
	fullSelector
		replaceFrom: 1
			to: 5
			with: 'state'
			startingAt: 1;
		replaceFrom: 6
			to: 5 + stateName size
			with: stateName
			startingAt: 1;
		at: fullSelector size put: $:.
	^fullSelector