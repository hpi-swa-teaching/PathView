instance creation
startWiringVia: selector label: aString
	| newMe |
	newMe := self perform: selector.
	newMe name: aString.
	newMe startWiring.