accessing
afterMethod: aMethod
	"Groups are cached for performance reasons (accessing pragmas
	seems to be very time expensive) Same goes for old object."
	self
		postconditionGroups: (SContract extractGroupsFrom: aMethod);
		requiresOldObject: (SContract requiresOldObjectFor: aMethod).
	afterMethod := aMethod.