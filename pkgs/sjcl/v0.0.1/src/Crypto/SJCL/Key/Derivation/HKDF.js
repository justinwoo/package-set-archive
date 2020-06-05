"use strict";

var sjcl = require('sjcl');

exports.hkdfImpl = function hkdfImpl (x,l,s,i,f) {
    return sjcl.misc.hkdf(x,l,s,i,f);
};
