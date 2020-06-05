"use strict";

var sjcl = require('sjcl');

exports.encryptImpl = function encryptImpl (c,x,i) {
    return sjcl.mode.cbc.encrypt(c,x,i);
};
exports.decryptImpl = function decryptImpl (c,x,i) {
    return sjcl.mode.cbc.decrypt(c,x,i);
};
