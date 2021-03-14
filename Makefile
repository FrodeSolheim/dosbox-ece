uname := $(shell uname -a)
ifneq ($(findstring Msys,$(uname)),)
exe = .exe
else
exe =
endif

srcdir = fsbuild/_build/dosbox-ece-src

all: build dosbox-ece${exe}

build:
	make -C ${srcdir}

dosbox-ece${exe}: ${srcdir}/src/dosbox${exe}
	cp ${srcdir}/src/dosbox${exe} dosbox-ece${exe}

clean:
	if [ -d ${srcdir} ]; then \
		make -C ${srcdir} clean; fi
	rm -f dosbox-ece${exe}
