subclass creation
subclass: aSymbol
instanceVariableNames: ivars
classVariableNames: classVars
poolDictionaries: pools
category: aCategory
	| klass |
	klass := super 
				subclass: aSymbol 
				instanceVariableNames: ivars 
				classVariableNames: classVars 
				poolDictionaries: pools 
				category: aCategory.
	klass methodDict ifEmpty: [
		self methodDict keys do: [:selector |
			klass compile: selector, ' aMorph
				super ', selector, ' aMorph'
			classified: 'visiting']].
	^ klass