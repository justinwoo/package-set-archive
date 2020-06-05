'use strict';

exports._remoteAddress = function(req) {
  return req.socket.remoteAddress;
}
