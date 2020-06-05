"use strict";

var unorm = require('unorm');


exports.nfd = function nfd (x) {
  return unorm.nfd(x);
};

exports.nfc = function nfc (x) {
  return unorm.nfc(x);
};

exports.nfkd = function nfkd (x) {
  return unorm.nfkd(x);
};

exports.nfkc = function nfkc (x) {
  return unorm.nfkc(x);
};
