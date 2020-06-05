"use strict";

var sjcl = require('sjcl');

exports.fromBits = sjcl.codec.utf8String.fromBits;

exports.toBits = sjcl.codec.utf8String.toBits;
