"use strict";

var sjcl = require('sjcl');

exports.encryptImpl = function encryptImpl (c,x,i,l,p) {
    return sjcl.mode.ocb2.encrypt(c,x,i,null,l,p);
};
exports.decryptImpl = function decryptImpl (c,x,i,l,p) {
    return sjcl.mode.ocb2.decrypt(c,x,i,null,l,p);
};
