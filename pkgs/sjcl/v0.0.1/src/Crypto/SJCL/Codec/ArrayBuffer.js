"use strict";

var sjcl = require('sjcl');

exports.fromBitsImpl = function fromBitsImpl (x, ml) {
    return ml === null ? sjcl.codec.arrayBuffer.fromBits(x) : sjcl.codec.arrayBuffer.fromBits(x,true,ml);
};


exports.toBits = sjcl.codec.arrayBuffer.toBits;
