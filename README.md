# nextgen_parsing
see doc/nextgen_parsing.pdf

The PDF has been updated:

- source code was wrong (missing "Read Text File" component)
- replaced "ohmjs.js" section with "test.txt" section
- see the new section entitled "What Is Wrong With This Grammar?"
- the Makefile (esp. clean: section) was wrong, it should refer to "nextgen_parsing" instead of phi
- inserted phi.rwr for the C version - you need to revamp it for Go.

now, you should be able to run "make" and see pure Go code printed on stdout, assuming you get that far without more documentation tonight

