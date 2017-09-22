var exec = require('cordova/exec');

var uplateMethods = {
	echo: function(arg0, success, error) {
  		exec(success, error, 'UpLate', 'echo', [arg0]);
	};
	show: function() {
    	exec(null, null, 'UpLate', 'show', null);
	};
};
module.exports = uplateMethods
