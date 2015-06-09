instance creation
reparentClass: aClass from: oldSuper to: newSuper

	^ self new
		reparentClass: aClass from: oldSuper to: newSuper;
		yourself