"use strict";

exports.newImpl = function newImpl (f) {
    return new f();
};

exports.resetImpl = function resetImpl (h) {
    h.reset();
};

exports.updateImpl = function updateImpl (h,x) {
    h.update(x);
};

exports.finalizeImpl = function finalizeImpl (h) {
    return h.finalize();
};
