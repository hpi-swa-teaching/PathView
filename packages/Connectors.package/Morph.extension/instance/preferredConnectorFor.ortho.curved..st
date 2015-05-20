*connectors-gestures
preferredConnectorFor: ends ortho: isOrtho curved: isCurved
	"Answer a connector if I have any preference. The default is to return nil, which will cause the default world behavior to be run (typically a prototype duplication)"
	^nil