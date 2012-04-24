
var OrientationPlugin = function() {};
			 
OrientationPlugin.prototype.setAllowed = function(options) {
    PhoneGap.exec(null, null, "Orientation", "setAllowed", options);
};
	
OrientationPlugin.install = function()
{
	if(!window.plugins)
		window.plugins = {};
		
	window.plugins.orientation = new OrientationPlugin();
}

/**
 * Add to PhoneGap constructor
 */
PhoneGap.addConstructor(OrientationPlugin.install);

