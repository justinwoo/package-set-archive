"use strict";

var sjcl = require ('sjcl');
var bitArray = sjcl.bitArray;

exports.bitLength = bitArray.bitLength;

exports.bitSliceImpl = bitArray.bitSlice;

exports.byteswapM = bitArray.byteswapM;

exports.clampImpl = bitArray.clamp;

exports.concatImpl = bitArray.concat;

exports.equalImpl = bitArray.equal;

exports.extractImpl = bitArray.extract;

exports.getPartial = bitArray.getPartial;

exports.partialImpl = bitArray.partial;

exports.partial_Impl = function partial_Impl (i,w) {
    return bitArray.partial(i,w,1);
};


exports.fromBits = sjcl.codec.bytes.fromBits;

exports.toBits = sjcl.codec.bytes.toBits;
