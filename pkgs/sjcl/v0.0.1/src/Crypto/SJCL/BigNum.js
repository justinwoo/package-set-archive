"use strict";

var sjcl = require('sjcl');
var bn = sjcl.bn;

exports.bignum = bn;

exports.newImpl = function newImpl (f,x) {
    return new f(x);
};

exports.copyImpl = function copyImpl (x) {
    return x.copy();
};

exports.equalsImpl = function equalsImpl (x,y) {
    return x.equals(y);
};

exports.getLimbImpl = function getLimbImpl (x,y) {
    return x.getLimb(y);
};

exports.greaterEqualsImpl = function greaterEqualsImpl (x,y) {
    return x.greaterEquals(y);
};

exports.toString = function toString (x) {
    return x.toString();
};

exports.addMImpl = function addMImpl (x,y) {
    x.addM(y);
};

exports.subMImpl = function subMImpl (x,y) {
    x.subM(y);
};

exports.doubleMImpl = function doubleMImpl (x) {
    x.doubleM();
};

exports.halveMImpl = function halveMImpl (x) {
    x.halveM();
};

exports.modImpl = function modImpl (x,y) {
    return x.mod(y);
};

exports.inverseModImpl = function inverseModImpl (x,y) {
    return x.inverseMod(y);
};

exports.addImpl = function addImpl (x,y) {
    return x.add(y);
};

exports.subImpl = function subImpl (x,y) {
    return x.sub(y);
};

exports.mulImpl = function mulImpl (x,y) {
    return x.mul(y);
};

exports.square = function square (x) {
    return x.square();
};

exports.powerImpl = function powerImpl (x,y) {
    return x.power(y);
};

exports.mulmodImpl = function mulmodImpl (x,y,n) {
    return x.mulmod(y,n);
};

exports.powermodImpl = function powermodImpl (x,y,n) {
    return x.powermod(y,n);
};

exports.montpowermodImpl = function montpowermodImpl (x,y,n) {
    return x.montpowermod(y,n);
};


exports.trimImpl = function trimImpl (x) {
    x.trim();
};

exports.reduceImpl = function reduceImpl (x) {
    x.reduce();
};

exports.fullReduceImpl = function fullReduceImpl (x) {
    x.fullReduce();
};

exports.normalizeImpl = function normalizeImpl (x) {
    x.normalize();
};

exports.cnormalizeImpl = function cnormalizeImpl (x) {
    x.cnormalize();
};



exports.toBitsImpl = function toBitsImpl (x,l) {
    return x.toBits(l);
};

exports.bitLengthImpl = function bitLengthImpl (x) {
    return x.bitLength();
};

exports.fromBitsImpl = function fromBitsImpl (x) {
    return bn.fromBits(x);
};


exports.pseudoMersennePrimeImpl = function pseudoMersennePrimeImpl (e,c) {
    return bn.pseudoMersennePrime(e,c);
};


exports.p127 = bn.prime.p127;
exports.p25519 = bn.prime.p25519;
exports.p192k = bn.prime.p192k;
exports.p224k = bn.prime.p224k;
exports.p256k = bn.prime.p256k;
exports.p192 = bn.prime.p192;
exports.p224 = bn.prime.p224;
exports.p256 = bn.prime.p256;
exports.p384 = bn.prime.p384;
exports.p512 = bn.prime.p512;

exports.randomImpl = bn.random;
