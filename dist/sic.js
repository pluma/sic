/*! sic 0.2.1 Original author Alan Plum <me@pluma.io>. Released into the Public Domain under the UNLICENSE. @preserve */
module.exports = sic;

function sic(value) {
  return function() {
    return value;
  };
}
