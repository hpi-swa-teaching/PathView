public api
groupOfConcern: concern
	self groups keysAndValuesDo: [:key :value | 
		(value detect: [:each | each == concern] ifNone: [nil])
			ifNotNil: [^ key]].