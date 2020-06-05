"use strict";

var sjcl = require('sjcl');

exports.pbkdf2Impl = function pbkdf2Impl (x,s,i,l,f) {
    return sjcl.misc.pbkdf2(x,s,i,l,f);
};
