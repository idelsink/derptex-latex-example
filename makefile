# makefile for all documentation
# ignore the following directories:
ignore = derptex-latex shared

##################################
# DerpTex-LaTeX example makefile #
##################################
# only edit if you know what you're doing; the point of no return
directories=$(shell find . -maxdepth 1 -type d -not -name ".*" -printf '%P\n')
directories := $(filter-out $(ignore),$(directories))

# make all
all:$(directories)

# make specific target
$(directories):
	cd $@ && make
.PHONY: $(directories)

# clean build folder
clean:
	$(foreach dir,$(directories),cd $(dir) && make clean)

# purge build folder
purge:
	$(foreach dir,$(directories),cd $(dir) && make purge)
