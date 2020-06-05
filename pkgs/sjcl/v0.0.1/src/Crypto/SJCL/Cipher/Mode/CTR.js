"use strict";

var sjcl = require('sjcl');

exports.encryptImpl = function encryptImpl (c,x,i) {
    return sjcl.mode.ctr.encrypt(c,x,i);
};
exports.decryptImpl = function decryptImpl (c,x,i) {
    return sjcl.mode.ctr.decrypt(c,x,i);
};
