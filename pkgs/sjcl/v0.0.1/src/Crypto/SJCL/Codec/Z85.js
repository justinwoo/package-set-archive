"use strict";

var sjcl = require('sjcl');

exports.fromBitsImpl = sjcl.codec.z85.fromBits;

exports.toBitsImpl = sjcl.codec.z85.toBits;
