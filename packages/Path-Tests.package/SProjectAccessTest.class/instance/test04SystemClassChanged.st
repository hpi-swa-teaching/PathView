project tests
test04SystemClassChanged
	| recorder |
	recorder := SProjectEventRecorder new.
	self project addDependent: recorder.
	self assert: recorder events isEmpty.
	Compiler evaluate: 'Object subclass: #Driver
		instanceVariableNames: ''''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''Path-Dev-Example-Observer'''.
	self deny: recorder events isEmpty.