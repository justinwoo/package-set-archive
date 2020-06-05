"use strict";

var sjcl = require('sjcl');
var prng = sjcl.prng;


exports.prng = prng;

exports.newImpl = function newImpl (p) {
    return new prng(p);
};

exports.randomWordsImpl = function randomWordsImpl (s,i,p) {
    return s.randomWords(i,p);
};

exports.setDefaultParanoiaImpl = function setDefaultParanoiaImpl (s,p) {
    return s.setDefaultParanoia(p);
};

exports.addEntropyImpl = function addEntropyImpl (s,x,i,s) {
    s.addEntropy(x,i,s);
};

exports.isReadyImpl = function isReadyImpl (s,p) {
    return s.isReady(p);
};

exports.getProgressImpl = function getProgressImpl (s,p) {
    return s.getProgress(p);
};

exports.startCollectorsImpl = function startCollectorsImpl (s) {
    s.startCollectors();
};

exports.stopCollectorsImpl = function stopCollectorsImpl (s) {
    s.stopCollectors();
};

exports.random = sjcl.random;
