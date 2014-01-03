# Synopsis

**sic** is a JavaScript function for wrapping a value in a function.

[![browser support](https://ci.testling.com/pluma/sic.png)](https://ci.testling.com/pluma/sic)

[![Build Status](https://travis-ci.org/pluma/sic.png?branch=master)](https://travis-ci.org/pluma/sic) [![NPM version](https://badge.fury.io/js/sic.png)](http://badge.fury.io/js/sic) [![Dependencies](https://david-dm.org/pluma/sic.png)](https://david-dm.org/pluma/sic)

# Why?

It's trivial to implement, but in order to keep code DRY (and avoid silly mistakes) it makes sense to define this function only once per project. This library is the logical consequence of that.

# Install

## Node.js

### With NPM

```sh
npm install sic
```

### From source

```sh
git clone https://github.com/pluma/sic.git
cd sic
npm install
make
```

## Browser

### With component

```sh
component install pluma/sic
```

[Learn more about component](https://github.com/component/component).

### With bower

```sh
bower install sic
```

[Learn more about bower](https://github.com/twitter/bower).

### With a CommonJS module loader

Download the [latest minified CommonJS release](https://raw.github.com/pluma/sic/master/dist/sic.min.js) and add it to your project.

[Learn more about CommonJS modules](http://wiki.commonjs.org/wiki/Modules/1.1).

### With an AMD module loader

Download the [latest minified AMD release](https://raw.github.com/pluma/sic/master/dist/sic.amd.min.js) and add it to your project.

[Learn more about AMD modules](http://requirejs.org/docs/whyamd.html).

### As a standalone library

Download the [latest minified standalone release](https://raw.github.com/pluma/sic/master/dist/sic.globals.min.js) and add it to your project.

```html
<script src="/your/js/path/sic.globals.min.js"></script>
```

This makes the `sic` function available in the global namespace.

# Basic usage example

```javascript
var sic = require('sic');

var fn = sic('hello');

console.log(fn()); // 'hello'
```

# API

## sic(value):Function

Wraps the given value in a function.

# Unlicense

This is free and unencumbered public domain software. For more information, see http://unlicense.org/ or the accompanying [UNLICENSE](https://github.com/pluma/sic/blob/master/UNLICENSE) file.