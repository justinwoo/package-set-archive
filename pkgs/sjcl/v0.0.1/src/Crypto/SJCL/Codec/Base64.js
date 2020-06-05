"use strict";

var sjcl = require('sjcl');

exports.fromBits = sjcl.codec.base64.fromBits;

exports.toBitsImpl = sjcl.codec.base64.toBits;
