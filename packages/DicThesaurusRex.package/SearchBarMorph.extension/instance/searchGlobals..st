*DicThesaurusRex-override
searchGlobals: input
	(Smalltalk bindingOf: input)
		ifNotNil: [:assoc | 
			| global |
			"It's a global or a class"
			global := assoc value.
			^ ToolSet
				browse: (global isBehavior
						ifTrue: [global]
						ifFalse: [global class])
				selector: nil].
	^nil