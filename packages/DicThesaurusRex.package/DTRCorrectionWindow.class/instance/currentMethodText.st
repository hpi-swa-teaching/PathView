display
currentMethodText
	methods ifNil: [^ nil]. "not initialized yet"
	^ (methods at: methodIndex) ifNotNil: [ :method | method getSource ]