csv file
storeCollection: aCollection asCSVFile: aFileName
	| file |
	[file := FileDirectory default forceNewFileNamed: aFileName.
	 self convertCollectionToCSV: aCollection  on: file]
	ensure: [file close].