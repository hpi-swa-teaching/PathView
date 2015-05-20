as yet unclassified
addInstanceVariables
	| cls |
	cls := Smalltalk at: className ifAbsent: [ ^self ].
	self setTextAt: 2 to: (cls instanceVariablesString copyReplaceAll: ' ' with: String cr).
