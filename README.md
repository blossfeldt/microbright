# microbright

`brightup` and `brightdown` are extremely fast, low-latency, tiny and one-purpose controls for increasing or decreasing device brightness.

The new brightness level percentage is printed out as integer literal.

This Program works very well in combination with [Sway](https://github.com/swaywm/sway) and [wob](https://github.com/francma/wob).


## Usage

increasing brightness
```
brightup
```
decreasing brightness
```
brightdown
```


## Configuration

Configuration takes place within the sources:
* sysfs device
* maximum brightness
* minimum brightness
* stepping


## Installation

```
make
make install
```

Add user to group `video` to get write permissions to the backight device (udev rule)
