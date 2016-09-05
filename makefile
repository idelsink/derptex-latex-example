# makefile for all documentation

examplereport:
	cd example_report && make

# nextdocument:
	# cd dir && make

# Clean build dir
clean:
	cd ./example_report/ && make clean # example report
	# next document

# Purge build dir
purge:
	cd ./example_report/ && make purge # example report
	# next document

# Make all
all : examplereport
# add all targets

.PHONY : all
