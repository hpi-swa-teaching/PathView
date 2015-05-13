method tests
allMethodsOfObserverExample
	^ {ClockTimer -> #tick.
	ClockTimer -> #hour.
	ClockTimer -> #hour:.
	ClockTimer -> #initialize. 
	ClockTimer -> #second.
	ClockTimer -> #minute.
	ClockTimer -> #minute:.
	ClockTimer -> #second:.
	Driver -> #run.
	Driver class -> #demo.
	Observer -> #update:.
	Observer -> #subject.
	Observer -> #subject:.
	Observer class -> #on:.
	SAnalogClock -> #draw.
	SAnalogClock -> #update:.
	SDigitalClock -> #draw.
	SDigitalClock -> #update:. 
	SVisibleClock -> #initInFrame:.
	SVisibleClock -> #drawText:. 
	SVisibleClock class -> #defaultExtent.
	SVisibleClock class -> #newOn:inFrame:.
	SVisibleClock class -> #on:.
	Subject -> #initialize.
	Subject -> #notify.
	Subject -> #detach:.
	Subject -> #attach:.
	TestDriver -> #testNoop.
	TestDriver -> #tearDown.
	TestDriver -> #testRun} 
		inject: OrderedCollection new into: [:collection :each | 
			collection 
				add: (MethodReference class: each key selector: each value); 
				yourself]
	
	 