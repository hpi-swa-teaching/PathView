queries
choices
	"Answer an alphabetized list of known user custom event selectors"

	| choices |
	choices := NCAAConnectorMorph arrowDictionary keys asSortedCollection.
	^choices isEmpty ifTrue: [ #('no arrows') ] ifFalse: [ choices ]