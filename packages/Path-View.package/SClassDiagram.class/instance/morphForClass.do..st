layout graph-based
morphForClass: aClass do: aBlock
	
	^ classMorphs
		detect: [ :morph | morph klass = aClass theNonMetaClass ]
		ifFound: aBlock
		ifNone: [ nil ]