"use strict";

var sjcl = require('sjcl');

exports.encryptImpl = function encryptImpl (c,x,i,l) {
    return sjcl.mode.ccm.encrypt(c,x,i,null,l);
};
exports.decryptImpl = function decryptImpl (c,x,i,l) {
    return sjcl.mode.ccm.decrypt(c,x,i,null,l);
};
