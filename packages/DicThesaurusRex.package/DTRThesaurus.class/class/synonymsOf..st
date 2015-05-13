synonym query
synonymsOf: aString
	" returns synonyms for a search term "
	
	| synonymCollection condensedCollection mutualCollection nonMutualCollection |

	synonymCollection := self unsortedSynonymsOf: aString.
	synonymCollection := synonymCollection collect: [ :word | word withBlanksCondensed ].
	mutualCollection := synonymCollection select: [ :word | (self unsortedSynonymsOf: word) includes: aString].
	nonMutualCollection := synonymCollection difference: mutualCollection.
	mutualCollection := self sortCollectionByOccurencesAndLength: mutualCollection.
	nonMutualCollection := self sortCollectionByOccurencesAndLength: nonMutualCollection.
	synonymCollection := mutualCollection, nonMutualCollection.
	condensedCollection := OrderedCollection new.
	condensedCollection addAllFirstUnlessAlreadyPresent: synonymCollection.
	^ condensedCollection