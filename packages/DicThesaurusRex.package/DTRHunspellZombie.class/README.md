I am an ex-instance of DTRHunspell or one of its other subclasses. I became a zombie when #invalidate was sent to me (usually when the VM was restarted) which deprived me of my hunspell handle pointer.

When you send me api* messages to call hunspell functionality, I will transparently revive myself and my class will be changed to what is returned by DTRHunspell class>>platformSpecificSubclass.

DicThesaurusRex is released under the MIT License (MIT)

Copyright (c) 2013 Daniel Neuschäfer-Rube, Suhanyaa Nitkunanantharajah, Jaqueline Pollak and Jakob Reschke

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.