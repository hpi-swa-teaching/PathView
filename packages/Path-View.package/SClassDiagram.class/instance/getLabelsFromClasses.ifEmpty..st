toolbar-actions
getLabelsFromClasses: classes ifEmpty: aBlock
	"Return a collection of labels from a collection of classes" 
	| labels |

	labels := OrderedCollection with: 'new...'.
	labels addAll: (classes collect: [ :class| class name]).

	classes ifEmpty: [ aBlock value ].

	^ labels
	