"use strict";

// module Data.ArrayBuffer.DataView


exports.whole = function whole (b) {
    return new DataView(b);
};

exports.remainderImpl = function remainderImpl (b,i) {
    return new DataView(b,i);
};

exports.partImpl = function partImpl (b,i,j) {
    return new DataView(b,i,j);
};

exports.buffer = function buffer (v) {
    return v.buffer;
};

exports.byteOffset = function byteOffset (v) {
    return v.byteOffset;
};

exports.byteLength = function byteLength (v) {
    return v.byteLength;
};

exports.getterImpl = function getterImpl (data, v, o) {
    return ((o + data.bytesPerValue) >>> 0) <= v.byteLength
        ? v[data.functionName].call(v,o,data.littleEndian)
        : null;
};

exports.setterImpl = function setterImpl (data, v, o, n) {
    if (((o + data.bytesPerValue) >>> 0) <= v.byteLength) {
        v[data.functionName].call(v,o,n,data.littleEndian);
        return true;
    } else {
        return false;
    }
};
