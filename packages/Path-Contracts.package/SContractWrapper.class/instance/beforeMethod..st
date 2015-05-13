accessing
beforeMethod: aMethod
	"Groups are cached for performance reasons (accessing pragmas
	seems to be very time expensive)"
	self preconditionGroups: (SContract extractGroupsFrom: aMethod).
	beforeMethod := aMethod