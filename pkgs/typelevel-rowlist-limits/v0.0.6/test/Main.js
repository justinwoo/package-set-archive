"use strict"


function tests (unit) {
    return new Proxy({}, {
      get: function(object, property) {
        return function (obj) {
          return function () {
            return function () {
              return function () {
                return unit;
              };
            };
          };
        };
      }
    });
}


exports.undefined = undefined;
exports.tests = tests;
