csv file
convertCollectionToCSV: aCollection  on: aStream

	aCollection withIndexDo: [:row :index |
		aStream nextPutAll: index asString.
		aStream nextPut: $,.
		row do: [:column | 
			aStream nextPutAll: column asString.
			aStream nextPut: $,.].
		aStream cr; flush.].