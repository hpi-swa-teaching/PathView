building
buildPragma

	| pragma groups |
	groups := WriteStream on: String new.
	self groups do: [:group | group storeOn: groups] separatedBy: [groups space].
	pragma := self pragmaTemplate 
		copyReplaceTokens: '<GROUPS>' with: groups contents.
	self printSourceLine: pragma