methods
allMethods
	^ self allClasses inject: OrderedCollection new into: [:collection :klass | 
		klass methodDict keys 	do: [:selector | 
				collection add: (MethodReference class: klass selector: selector)].
		klass class methodDict keys do: [:selector | 
			collection add: (MethodReference class: klass class selector: selector)].
		collection]