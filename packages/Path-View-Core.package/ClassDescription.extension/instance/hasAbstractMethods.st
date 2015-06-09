*Path-View-Core
hasAbstractMethods 
	| aSet |
	aSet := IdentitySet new.
	self withAllSuperclasses do: [ :aClass |
		aClass methodDict keysAndValuesDo: [ :selector :compiledMethod |
  			(aSet includes: selector)				
   				ifFalse: [compiledMethod isAbstract
      						ifTrue: [^ true]
							ifFalse: [aSet add: selector]
						]
					
     		]
	].
	^ false