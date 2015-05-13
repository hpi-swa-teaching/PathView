wrapper instrumentation
createWrappers
	self selectedClasses do: [:klass | 
			klass selectors do: [:selector | 
				self createWrapperOn: klass and: selector].		
			klass class selectors do: [:selector | 
				self createWrapperOn: klass class and: selector]].