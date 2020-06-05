"use strict";

var sjcl = require('sjcl');
var ecc = sjcl.ecc;


exports.pointImpl = function pointImpl (c,x,y) {
    return new ecc.point(c,x,y);
};

exports.toJac = function toJac (p) {
    return p.toJac();
};

exports.multAffineImpl = function multAffineImpl (p,x) {
    return p.mult(x);
};

exports.mult2AffineImpl = function mult2AffineImpl (p,x,y,z) {
    return p.mult2(x,y,z);
};

exports.multiples = function multiples (p) {
    return p.multiples();
};

exports.toBits = function toBits (p) {
    return p.toBits();
};


exports.pointJacImpl = function pointJacImpl (x,y,z,c) {
    return new ecc.pointJac(x,y,z,c);
};

exports.addJacImpl = function addJacImpl (p,x) {
    return p.add(x);
};

exports.doubleJac = function doubleJac (p) {
    return p.double();
};

exports.toAffine = function toAffine (p) {
    return p.toAffine();
};

exports.multJacImpl = function multJacImpl (p,x,y) {
    return p.mult(x,y);
};

exports.mult2JacImpl = function mult2JacImpl (p,x,y,z,q) {
    return p.mult2(x,y,z,q);
};


exports.negateImpl = function negateImpl (x) {
    return x.negate();
};

exports.isValidImpl = function isValidImpl (x) {
    return x.isValid();
};


exports.curveImpl = function curveImpl (a,b,c,d,e) {
    return new ecc.curve(a,b,c,d,e);
};

exports.curveFromBitsImpl = function curveFromBitsImpl (c,b) {
    return c.fromBits(b);
};

var curves = ecc.curves;

exports.c192 = curves.c192;
exports.c224 = curves.c224;
exports.c256 = curves.c256;
exports.c384 = curves.c384;
exports.c521 = curves.c521;
exports.k192 = curves.k192;
exports.k224 = curves.k224;
exports.k256 = curves.k256;

var basicKey = ecc.basicKey;

exports.newBasicPublicKeyImpl = function newBasicPublicKeyImpl (c,p) {
    return new basicKey.publicKey(c,p);
};
exports.newBasicSecretKeyImpl = function newBasicSecretKeyImpl (c,p) {
    return new basicKey.secretKey(c,p);
};

exports.getPublic = function getPublic (k) {
    return k.get();
};
exports.getSecret = function getSecret (k) {
    return k.get();
};


var elGamal = ecc.elGamal;

exports.newElGamalKeypairImpl = function newElGamalKeypairImpl (c,p,k) {
    return elGamal.generateKeys(c,p,k);
};

exports.newElGamalPublicKeyImpl = function newElGamalPublicKeyImpl (c,p) {
    return new elGamalKey.publicKey(c,p);
};
exports.newElGamalSecretKeyImpl = function newElGamalSecretKeyImpl (c,p) {
    return new elGamalKey.secretKey(c,p);
};

exports.kemImpl = function kemImpl (k,p) {
    return k.kem(p);
};
exports.unkemImpl = function unkemImpl (k,x) {
    return k.unkem(x);
};

exports.dhImpl = function dhImpl (s,p) {
    return s.dh(p);
};
exports.dhJavaImpl = function dhJavaImpl (s,p) {
    return s.dhJava(p);
};


var ecdsa = ecc.ecdsa;

exports.newEcdsaKeypairImpl = function newEcdsaKeypairImpl (c,p,k) {
    return ecdsa.generateKeys(c,p,k);
};

exports.newEcdsaPublicKeyImpl = function newEcdsaPublicKeyImpl (c,p) {
    return new ecdsaKey.publicKey(c,p);
};
exports.newEcdsaSecretKeyImpl = function newEcdsaSecretKeyImpl (c,p) {
    return new ecdsaKey.secretKey(c,p);
};

exports.verifyImpl = function verifyImpl (k,x,y,z) {
    return k.verify(x,y,z);
};

exports.signImpl = function signImpl (k,x,y,z) {
    return k.sign(x,y,z);
};
