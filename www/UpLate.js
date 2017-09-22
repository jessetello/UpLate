var exec = require('cordova/exec');
	exports.echo = function(arg0, success, error) {
  		cordova.exec(success, error, 'UpLate', 'echo', [arg0]);	
  	};
	exports.show = function() {
    	cordova.exec(null, null, 'UpLate', 'show', null);
    };
