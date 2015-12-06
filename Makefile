unity:
	mkdir work
	cd work && apt-get source unity
	cd work/unity-*/plugins/unityshell/src && patch -u < ../../../../../unityshell.cpp.diff
	cd work/unity-* && dpkg-buildpackage -us -uc -nc

install:
	sudo dpkg -i work/*.deb

clean:
	rm -rf work
