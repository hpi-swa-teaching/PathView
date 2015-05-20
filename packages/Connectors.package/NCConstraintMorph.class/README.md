I apply the result of a pluggable MessageSend to some inputs, and then
take the value of that MessageSend and apply it to some other object.

Typically the result of the MessageSend is a Point, and I constrain the other object by moving it to that Point.

The MessageSend (if I have a single input) is assumed to return a Point in the coordinate system of my input. I translate this to my coordinate system prior to applying it.

I do this in my step method.