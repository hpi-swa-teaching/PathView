reengineering
deleteMethod

	| confirmation |
	(UIManager default confirm: 'Really delete ', methodName, '?') ifFalse: [^self].

	confirmation := SystemNavigation default confirmRemovalOf: methodName on: klass.
	confirmation = 3
		ifTrue: [^ self].
		
	klass removeSelector: methodName.		
	confirmation = 2
		ifTrue: [SystemNavigation default browseAllCallsOn: methodName.]