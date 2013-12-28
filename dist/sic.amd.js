/*! sic 0.1.0 Original author Alan Plum <me@pluma.io>. Released into the Public Domain under CC0. @preserve */
define(function(require, exports, module) {
module.exports = sic;

function sic(value) {
  return function() {
    return value;
  };
}
return module.exports;});
