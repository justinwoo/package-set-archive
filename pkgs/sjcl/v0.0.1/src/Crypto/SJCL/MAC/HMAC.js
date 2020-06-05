"use strict";

var sjcl = require('sjcl');

var hmac = sjcl.misc.hmac;

exports.hmac = hmac;

exports.newImpl = function newImpl (k,mf) {
    return new hmac(k,mf);
};


exports.resetImpl = function resetImpl (h) {
    h.reset();
};

exports.updateImpl = function updateImpl (h,x) {
    h.update(x);
};

exports.digestImpl = function digestImpl (h) {
    return h.digest();
};

exports.macImpl = function macImpl (h,x) {
    return h.mac(x);
};
