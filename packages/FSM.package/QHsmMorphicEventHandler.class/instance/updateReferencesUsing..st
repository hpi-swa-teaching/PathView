copying
updateReferencesUsing: aDictionary 
	"Update intra-morph references within a composite morph that 
	has been copied. For example, if a button refers to morph X in 
	the orginal 
	composite then the copy of that button in the new composite 
	should refer to 
	the copy of X in new composite, not the original X. This default 
	implementation updates the contents of any morph-bearing slot. 
	It may be 
	overridden to avoid this behavior if so desired."

	self handlersKeysAndValuesDo: [ :key :ms |
		aDictionary at: ms receiver ifPresent: [ :m | ms receiver: m ].
		ms arguments: (ms arguments ifNotNilDo: [ :args |
			args collect: [ :arg | aDictionary at: arg ifAbsent: [ arg ]]]).
	]