testing
testStringsMagnitudesAndObjects
	| jm |
	jm := SHClassA new.
	self
		assert: (jm strings: 'hi' magnitudes: $E andObjects: 23 index: 1) = 'hi';
		assert: (jm strings: #ho magnitudes: #eep -> #oop andObjects: 'xyz' index: 1) = #ho;
		assert: (jm strings: #'a b c' magnitudes: DateAndTime current andObjects: nil index: 3) = nil;
		assert: (jm strings: 'Yo!' magnitudes: TimeStamp now andObjects: self index: 3) = self