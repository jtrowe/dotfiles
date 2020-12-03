
MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --warn-undefined-variables

.DELETE_ON_ERROR :


build_dir=build
src_dir=src


all : $(build_dir)/HTML5/Task/index.html


clean :
	rm --recursive --force $(build_dir)


$(build_dir)/HTML5/Task/index.html : \
$(build_dir)/AsciiDoc/Task/index.asc
	@ mkdir --parents $$(dirname $@)
	asciidoc --backend html5 --out-file $@ $<


$(build_dir)/AsciiDoc/Task/index.asc : \
$(build_dir)/AsciiDoc/Task/README.asc \
$(src_dir)/Task/index.asc \
$(src_dir)/Task/????.??.?.asc
	@ mkdir --parents $$(dirname $@)
	cp --archive $(build_dir)/AsciiDoc/Task/README.asc    $(build_dir)/AsciiDoc/Task/index.asc
	@ echo "\n:leveloffset: 1\n"                       >> $(build_dir)/AsciiDoc/Task/index.asc
	@ cat $(src_dir)/Task/index.asc                    >> $(build_dir)/AsciiDoc/Task/index.asc
	cp --archive $(src_dir)/Task/????.??.?.asc            $(build_dir)/AsciiDoc/Task/


$(build_dir)/AsciiDoc/Task/README.asc : ../README.md
	@ mkdir --parents $$(dirname $@)
	pandoc --from markdown_github --to asciidoc --output $@ $<


