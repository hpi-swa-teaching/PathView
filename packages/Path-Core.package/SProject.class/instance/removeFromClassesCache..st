classes
removeFromClassesCache: aClass
	classesCache := self allClasses reject: [:each | each = aClass].