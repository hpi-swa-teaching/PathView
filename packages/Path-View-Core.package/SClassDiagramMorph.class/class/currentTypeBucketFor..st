accessing
currentTypeBucketFor: aClass
	
	^ SProject current
		ifNil: [ nil ]
		ifNotNilDo: [ :project |
			project typesBucket
				ifNil: [ nil ]
				ifNotNilDo: [ :bucket |
					(bucket includesMembersFor: aClass)
						ifTrue: [ bucket ]
						ifFalse: [ nil ] ] ]