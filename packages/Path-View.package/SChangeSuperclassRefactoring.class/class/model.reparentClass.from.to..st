instance creation
model: aRBSmalltalk reparentClass: aClass from: oldSuper to: newSuper

	^ self new
		model: aRBSmalltalk;
		reparentClass: aClass from: oldSuper to: newSuper;
		yourself