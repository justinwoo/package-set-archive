"use strict";

var sjcl = require('sjcl');

exports.scryptImpl = function scryptImpl (x,s,n,r,p,l,f) {
    return sjcl.misc.scrypt(x,s,n,r,p,l,f);
};
