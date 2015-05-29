layout and labels
updateEntries
	"Recreate the entries and add them properly."
	|previouslyExpandedEntries|

	entries ifNil: [
		self indentation: 0.
		self updateExpansion .
		^self].

	previouslyExpandedEntries := entries select: [:e | e isExpandable and: [e expanded ]].
	entries do: #delete.
	entries := nil.
	self indentation: 0.
	self recursivelyUpdateExpansion: previouslyExpandedEntries.