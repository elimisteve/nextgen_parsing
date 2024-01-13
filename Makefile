LIBSRC=libsrc
ODIN_FLAGS ?= -debug -o:none
0D=0d/odin/0d/*.odin 0d/odin/std/*.odin
D2JDIR=0d/odin/das2json
D2J=$(D2JDIR)/das2json

dev:
	make clean
	make run

run: nextgen_parsing transpile.drawio.json
	./nextgen_parsing main phi.drawio $(LIBSRC)/transpile.drawio

nextgen_parsing transpile.drawio.json: $(D2J) phi.drawio $(LIBSRC)/transpile.drawio
	$(D2J) phi.drawio
	$(D2J) $(LIBSRC)/transpile.drawio
	odin build . $(ODIN_FLAGS)

$(D2J):
	echo 'Please remake das2json'

$(0D):
	echo 'Please remake 0D'

clean:
	rm -rf nextgen_parsing nextgen_parsing.dSYM
