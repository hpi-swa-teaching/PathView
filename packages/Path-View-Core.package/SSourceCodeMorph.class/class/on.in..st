instance creation
on: aSelector in: aClass

	^ self basicNew
		selector: aSelector asSymbol;
		klass: aClass;
		initialize;
		yourself
		