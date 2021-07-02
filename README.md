# Create Debian Package for [Yet Another APRS Client](https://www.ka2ddo.org/ka2ddo/YAAC.html)

Yet Another APRS Client (YAAC) by KA2DDO is a popular APRS package. Written in
Java this software can run on many different operating systems including
many distributions of Linux and Raspberry Pi OS. It is not difficult to
install following the directions, but the process can still benefit from
the existence of packages so the user can use the same process to install
and update YAAC as they use for other software.

## Requirements

* ```git```
* ```cmake``` version 3.16 or better
* ```wget```
* ```bash``` (Almost certainly installed.)

## Creating the Package

Ensure requirements are installed
```
sudo apt install git cmake wget
```

Get the git repository and build.

```shell script
git clone https://github.com/pa28/YAAC.git
cd YAAC
mkdir cmake-build-release
cd cmake-build-release
cmake -DCMAKE_BUILD_TYPE=Release ..
make package
``` 