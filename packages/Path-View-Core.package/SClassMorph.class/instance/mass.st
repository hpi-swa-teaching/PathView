layout force-based
mass
	"The mass of a class-morph is based on it's extent. This is just an estimating formula,
	as there is no real physical equivalent for this."
	
	^ (self extent x * self extent y) sqrt / 180