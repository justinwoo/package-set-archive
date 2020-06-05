'use strict';

exports.requestProtocol = function(req) {
  return req.socket.encrypted ? 'https' : 'http';
}
