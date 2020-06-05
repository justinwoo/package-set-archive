"use strict";

var sjcl = require('sjcl');

var aes = sjcl.cipher.aes;

exports.aes = aes;

exports.newImpl = function newImpl (x) {
    return new aes(k);
};

exports.encryptImpl = function encryptImpl (x,y) {
    return x.encrypt(y);
};
exports.decryptImpl = function decryptImpl (x,y) {
    return x.decrypt(y);
};
