class initialization
parseFileToDictionary: aFileNameString
	^ FileDirectory default fileNamed: aFileNameString do: [:file | self readThesaurusDictionaryFromLines: file]