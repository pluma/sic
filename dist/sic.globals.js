/*! sic 0.1.0 Copyright (c) 2013 Alan Plum. MIT licensed. @preserve */
(function(root){var require=function(key){return root[key];},module={};
module.exports = sic;

function sic(value) {
  return function() {
    return value;
  };
}
root.sic = module.exports;}(this));
