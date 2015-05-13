accessing
variableMorphFor: association
	"class -> selector"
	
	^ ({ instanceStateMorph. classStateMorph }
		select: #notNil)
		detect: [ :morph | morph klass = association key ]
		ifFound: [ :morph | morph variableMorphFor: association value ]
		ifNone: [ nil ]