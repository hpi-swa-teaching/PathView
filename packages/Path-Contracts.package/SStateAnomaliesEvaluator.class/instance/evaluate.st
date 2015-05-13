public API
evaluate
	| mutation |
	Transcript clear.
	self numberOfMutations timesRepeat: [
		mutation := self mutationFactory randomMutation.
		[mutation doMutated: [self checkForFailuresWithPathMap: mutation]] 
			on: Error do: [:err | Transcript show: err asString; cr.]].
	self pathMap abandon.
	^ self results explore