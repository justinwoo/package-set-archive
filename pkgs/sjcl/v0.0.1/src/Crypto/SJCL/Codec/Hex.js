"use strict";

var sjcl = require('sjcl');

exports.fromBits = sjcl.codec.hex.fromBits;

exports.toBits = sjcl.codec.hex.toBits;
