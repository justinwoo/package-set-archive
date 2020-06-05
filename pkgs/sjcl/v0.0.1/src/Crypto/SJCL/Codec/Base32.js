"use strict";

var sjcl = require('sjcl');

exports.fromBits = sjcl.codec.base32.fromBits;

exports.toBitsImpl = sjcl.codec.base32.toBits;
