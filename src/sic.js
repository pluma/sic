module.exports = sic;

function sic(value) {
  return function() {
    return value;
  };
}
