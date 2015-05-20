private
fullSelectorFor: type in: stateName
	| fullSelector |
	fullSelector := String new: stateName size + type size + 9.	"handleTypeInSelector:"
	fullSelector
		replaceFrom: 1
			to: 6
			with: 'handle'
			startingAt: 1;
		at: 7 put: type first asUppercase;
		replaceFrom: 8
			to: 6 + type size
			with: type
			startingAt: 2;
		replaceFrom: 7 + type size
			to: 8 + type size
			with: 'In'
			startingAt: 1;
		replaceFrom: 9 + type size
			to: 8 + type size + stateName size
			with: stateName
			startingAt: 1;
		at: fullSelector size put: $:.
	^fullSelector