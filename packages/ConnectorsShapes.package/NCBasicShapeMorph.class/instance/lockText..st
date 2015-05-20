accessing
lockText: aBoolean
	self textMorphs do: [ :ea | ea lock: aBoolean. aBoolean ifTrue: [ ea releaseEditor ] ]