tracing
createWrappers
	| wrappers |
	wrappers := OrderedCollection new.
	self selectedClasses do: [:klass | 
			klass selectors do: [:selector | 
				self createWrapperOn: klass and: selector addTo: wrappers].		
			klass class selectors do: [:selector | 
				self createWrapperOn: klass class and: selector addTo: wrappers]].
	^ wrappers