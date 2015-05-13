synonym query
sortCollectionByOccurencesAndLength: aCollection

	^ aCollection sorted: 
		[ :first : second | 
			(aCollection occurrencesOf: first) > (aCollection occurrencesOf: second)
			or: ((aCollection occurrencesOf: first) == (aCollection occurrencesOf: second) 
				and: first size < second size)]