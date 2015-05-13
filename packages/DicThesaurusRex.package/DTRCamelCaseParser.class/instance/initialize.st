initialize-release
initialize
	inputWord := ''.
	words := OrderedCollection new.
	currentWord := WriteStream on: ''.
	haveLowercase := false