"use strict";

var bip39 = require('bip39');


exports.entropyToMnemonicImpl = function (x) {
  try {
    var ss = new Array(Object.keys(x).length);
    for (var k in x) {
      var x_  = x[k];
      var x__ = x_.toString(16);
      ss[k] = (x_ < 16) ? '0' + x__
        : x__;
    }
    var s = ss.join('');
    return bip39.entropyToMnemonic(s);
  } catch(e) {
    console.log("BIP39 entropyToMnemonc error:", e);
    return null;
  }
};

exports.mnemonicToEntropyImpl = function (m) {
  try {
    var str = bip39.mnemonicToEntropy(m);

    var a = [];
    for (var i = 0, len = str.length; i < len; i+=2) {
      a.push(parseInt(str.substr(i,2),16));
    }

    return new Uint8Array(a);
  } catch(e) {
    console.log("BIP39 mnemonicToEntropy error:", e);
    return null;
  }
};
