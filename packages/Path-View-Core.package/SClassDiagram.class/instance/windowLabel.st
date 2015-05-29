accessing
windowLabel

	^ String streamContents: [ :str |
		str nextPutAll: 'PathView - '.
		str nextPutAll: self windowLabelName ]