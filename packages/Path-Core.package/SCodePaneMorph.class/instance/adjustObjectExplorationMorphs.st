explore actions
adjustObjectExplorationMorphs

	| posX |
	posX := self position x + self width.
	self objectExplorationMorphsStack do: [:each | 
		each position: posX @ self position y.
		posX := posX + each width].