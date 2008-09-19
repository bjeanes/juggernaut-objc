/* Objective-C Juggernaut Overrides */

try
{
	juggernaut.swf = function() {
		return {
			'connect': function(h,p) { window.location = 'juggernaut:connect?host='+h+'&'+p; },
			'disconnect': function () {	window.location = 'juggernaut:disconnect'; },
			'remove': function () { console.log('remove() not implemented for the Obj-C bridge'); },
			'sendData': function(d) { console.log('sendData() not implemented for the Obj-C bridge'); }
		};
	};
} catch(e) { console.log('Juggernaut not found'); }