This is a Morph (actually a family of Morphs) that do alignment of other morphs.

BroomMorphs become: an object of one of their subclasses when dragged far enough.

Drag a BroomMorph in some direction and it becomes a broom that can align the Morphs it touches.

This idea is borrowed from the GEF framework (http://gef.tigris.org)

If you want to pick up a BroomMorph, you can use the Shift key.

Hitting the ESC key will re-position all moved Morphs to their original position.

BroomMorph newTransient will give you a BroomMorph that will delete itself on mouse up.

unmoved	the set of Morphs that I won't move
moved		the set of Morphs that I might move
start		my first hotspot
span		how wide to make (each half of) my bar initially
width		the width of the main lines
hotspot		my active position
lastHotspot	my last active position
drawBroomIcon	true if I look like a broom while idle (false=look like a +)
transient	if true, then I delete myself on mouse-up
