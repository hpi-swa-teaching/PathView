initialize-release
reparentClass: aClass from: oldSuper to: newSuper
	self className: aClass name.
	oldSuperclass := oldSuper.
	newSuperclass := newSuper.
	category := aClass category