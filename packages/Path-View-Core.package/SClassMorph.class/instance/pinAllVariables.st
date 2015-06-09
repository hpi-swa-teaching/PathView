actions
pinAllVariables
	
	| klass |
	klass := self visualizedClass theNonMetaClass.
	klass allInstVarNames do: [ :varName | self pinVariable: klass -> varName asSymbol ].
	klass := klass theMetaClass.
	klass allInstVarNames do: [ :varName | self pinVariable: klass -> varName asSymbol ].