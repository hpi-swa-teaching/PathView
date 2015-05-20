I am a ConstraintMorph that owns a TextMorph. I follow attempts to
move myself by remembering an offset.

I am movable by pressing the shift key, or by selecting my edge.

My menu has an "attach to" choice that lets the user pick what object
to connect to.

I prtetend to be a TextMorph, and delegate any message not understood
to my label.