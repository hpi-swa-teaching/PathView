accessing
windowLabelName

	^ String streamContents: [:str |  
		savedName
			ifNil: [ str nextPutAll: '*unsaved*' ]
			ifNotNil: [
				str nextPutAll: savedName.
				dirty ifTrue: [ str nextPutAll: ' (with unsaved changes)' ] ] ]