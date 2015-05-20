private
transitionDynamicallyTo: target
	"First execute the exit actions from myState to the least-common ancestor of myState and target.
	Then execute the entry actions from the LCA to target.
	Any actions associated with the transition itself should already be done in the source state.
	See PSCC++ listing 4.10"
	| entry p q s  |
	self assert: [ target ~= self top ].	"cannot target 'top' state."
	entry := OrderedCollection new.

	"First, exit all the nested states between myState and mySource."
	s := myState.
	[ s ~= mySource ] whileTrue: [
		self assert: [ s notNil ].
		s := s exit ifNil: [ s superstate ].
	].

	"Now check all seven of the possible source/target state combinations"
	entry add: target.

	"(a) check mySource == target (transition to self)"
	mySource = target ifTrue: [
		mySource exit.
		^self enter: target via: entry.
	].

	"(b) check mySource == target superstate"
	p := target superstate.
	mySource = p ifTrue: [ ^self enter: target via: entry ].	"no exit action"
	
	self assert: [ mySource notNil ].

	"(c) check mySource superstate == target superstate (most common)"
	q := mySource superstate.
	q = p ifTrue: [
		mySource exit.
		^self enter: target via: entry.
	].

	"(d) check mySource superstate == target"
	q = target ifTrue: [
		mySource exit.
		entry removeLast.	"do not enter the LCA"
		^self enter: target via: entry.
	].

	"(e) check rest of mySource = target super super [...] hierarchy"
	entry addLast: p.
	s := p superstate.
	[ s notNil ] whileTrue: [
		mySource = s ifTrue: [ ^self enter: target via: entry ].
		entry addLast: s.
		s := s superstate.
	].

	"otherwise we're definitely exiting mySource."
	mySource exit.

	"(f) check rest of mySource super = target super super [...] hierarchy"
	entry size to: 1 do: [ :lca |
		(q = (entry at: lca)) ifTrue: [
			^self enter: target via: (entry copyFrom: 1 to: lca - 1).	"do not enter the LCA"
		]
	].

	"(g) check each mySource super super [...] for each target super [...]"
	s := q.
	[ s notNil ] whileTrue: [
		entry size to: 1 by: -1 do: [ :lca |
			s = (entry at: lca) ifTrue: [
				^self enter: target via: (entry copyFrom: 1 to: lca - 1).	"do not enter the LCA"
			]
		].
		s exit.
		s := s superstate.
	].

	self assert: [ false ].			"malformed FSM"