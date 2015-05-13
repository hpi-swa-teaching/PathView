checking
blacklistedMethods
	"Methods listed below may lead to an image freeze if mutated"
	^ { 
		MethodReference class: SOMMethodParser2 selector: #countBracket.
		MethodReference class: SOMClassParser2 selector: #classInstanceSwitch.
		MethodReference class: SOMClassParser2 selector: #foreignParseMethod.
		MethodReference class: SOMMethodParser2 selector: #unaryMsg.
		MethodReference class: SOMMethodParser2 selector: #binaryMsg.
		MethodReference class: SOMMethodParser2 selector: #assignment.
		MethodReference class: SOMMethodParser2 selector: #binaryChar.
		MethodReference class: SOMMethodParser2 selector: #method.
		MethodReference class: SOMArray selector: #at:.
		MethodReference class: SOMArray selector: #add:.
		MethodReference class: SOMFrame selector: #at:put:.
		MethodReference class: SOMInterpreter selector: #popFrame.
		MethodReference class: SOMInterpreter selector: #somFrame:.
		MethodReference class: SOMClassGenerationContext selector: #addFields:.
		MethodReference class: SOMFrame selector: #pop.
		MethodReference class: SOMFrame selector: #stackElementAtIndex:.
		MethodReference class: SOMInteger class selector: #maxInt.
		MethodReference class: SOMMethodGenerationContext selector: #addLocalIfAbsent:.
		MethodReference class: SOMMethodGenerationContext selector: #outer:.
		MethodReference class: SOMParser2 selector: #comment.
		MethodReference class: SOMVariableLookup selector: #isArgument:.
		MethodReference class: SOMVariableLookup selector: #lookupArgument.
		MethodReference class: SOMVariableLookup selector: #lookupField.
		MethodReference class: SOMVariableLookup selector: #lookupLocal.
		MethodReference class: SOMVariableLookup selector: #isLocal:.
		MethodReference class: SOMVariableLookup selector: #isField:.
		MethodReference class: SOMBlock selector: #cacheEvaluationMethodWithParameters:.
		MethodReference class: SOMBlock selector: #somBlockMethod:.
	}