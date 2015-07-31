testing
testExtendDiagramTopLeft
	"a morph is dropped and the diagram will extend"

	| bounds dropPosition additionalWidth additionalHeight |

	"set up"
	instance openInWorld.
	bounds := instance bounds.
	dropPosition := bounds topLeft - (20@20).
	additionalWidth := klass extensionOffset + 20.
	additionalHeight := klass extensionOffset + 20.

	self dropEventAt: dropPosition with: self class do: [
		self assert: [ instance bounds width >= (bounds width + additionalWidth) ].
		self assert: [ instance bounds height >= (bounds height + additionalHeight) ].
		self assert: [ instance bounds left < bounds left ].
		self assert: [ instance bounds top < bounds top ]].

	"clean up"
	instance owner removeMorph: instance.
