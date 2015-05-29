accessing
methodMorphFor: association
	"class -> variableName"
	
	^ ({ instanceBehaviorMorph. classBehaviorMorph }
		select: #notNil)
		detect: [ :morph | morph klass = association key ]
		ifFound: [ :morph | morph methodMorphFor: association value ]
		ifNone: [ nil ]