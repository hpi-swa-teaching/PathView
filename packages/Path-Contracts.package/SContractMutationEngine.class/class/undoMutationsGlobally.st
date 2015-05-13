public api
undoMutationsGlobally
	
	"First, do a garbage collection so no iteration takes place over no
	longer referenced SContractMutationWrapper instances"
	Smalltalk garbageCollect.
	SContractMutationWrapper allInstancesDo: [:instance |
		instance uninstall].