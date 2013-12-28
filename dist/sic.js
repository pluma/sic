/*! sic 0.1.0 Copyright (c) 2013 Alan Plum. MIT licensed. @preserve */
module.exports = sic;

function sic(value) {
  return function() {
    return value;
  };
}
