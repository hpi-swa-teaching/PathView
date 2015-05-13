building-pluggable-morphs
label
	| subhead |
	subhead := self testChooserModel test 
		ifNil: ['']
		ifNotNil: [
			self testChooserModel test isString
				ifTrue: ['Code Snippet']
				ifFalse: [self testChooserModel test stringVersionDefault]].
	^ self toolName, ': ', subhead