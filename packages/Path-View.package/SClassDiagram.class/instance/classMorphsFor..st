accessing
classMorphsFor: class

	^ classMorphs select: [ :each | each klass = class ]