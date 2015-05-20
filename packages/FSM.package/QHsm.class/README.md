handlers may be named either
	handle<Event>In<State>:
or
	handle<State>:
and are passed each event.

They may return either:
	nil	--	event was handled in this state
	QState	--	handle in another (super) state

And internally they may call:
	newState:	--	change state to given state
	newInitialState:		-- only in response to an #init event, answer the next (sub) initial state.
			
Instance Variables
	myState -- the current state
	mySource -- the source of the current transition, if any (copied from myState at the beginning of an event dispatch).