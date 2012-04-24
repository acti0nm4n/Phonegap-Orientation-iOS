Phonegap-Orientation-iOS
========================

##Plugin for enabling/disabling device orientation

####In Xcode project

Place Orientation.h & Orientation.m in to plugins folder

Add into Appdelegate.h
	
	...
	
		@interface AppDelegate : PhoneGapDelegate {

			NSString* invokeString;
		}
	
		- (void)setOrientation:(NSArray *)arguments;
 		- @property (copy)  NSString* invokeString;

	@end

Add into AppDelegate.m

	- (void)setOrientation:(NSArray *)arguments
	{
		self.viewController.supportedOrientations = arguments;
	}

###Usage

Include OrienationPlugin.js in index.html

Params in object:
* pp - Portrait
* pd - Portrait upside down
* ll - Landscape left
* lr - Landscape right

####Examples (in javascript)

Portrait only

	window.plugins.orientation.setAllowed([{pp:true, pd:false, ll:false, lr:false}]);
	
All, except Portrait upside down

	window.plugins.orientation.setAllowed([{pp:true, pd:false, ll:true, lr:true}]);