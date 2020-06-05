"use strict";

var sjcl = require('sjcl');

exports.encryptImpl = function encryptImpl (c,x,i,l) {
    return sjcl.mode.gcm.encrypt(c,x,i,null,l);
};
exports.decryptImpl = function decryptImpl (c,x,i,l) {
    return sjcl.mode.gcm.decrypt(c,x,i,null,l);
};
