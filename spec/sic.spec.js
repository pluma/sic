/*global describe, it */
var expect = require('expect.js'),
  sic = require('../');

describe('sic', function() {
  it('returns a function', function() {
    expect(sic()).to.be.a('function');
  });
  it('wraps the given value', function() {
    expect(sic(true)()).to.equal(true);
    expect(sic(false)()).to.equal(false);
    expect(sic('hello')()).to.equal('hello');
    expect(sic('')()).to.equal('');
    expect(sic(0)()).to.equal(0);
    expect(sic(undefined)()).to.equal(undefined);
  });
});
