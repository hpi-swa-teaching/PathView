*Path-Contracts
invariantMethod: aMethod
	"Groups are cached for performance reasons (accessing pragmas
	seems to be very time expensive)"
	self invariantGroups: (SContract extractGroupsFrom: aMethod).
	SContractInvariantRegistry
		invariantMethodAt: self
		put: aMethod.