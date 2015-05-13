initialize-release
createCollector
	bucket := self harvestAllTypes
		ifTrue: [ SPolyTypeBucket new ]
		ifFalse: [ SMonoTypeBucket new ]