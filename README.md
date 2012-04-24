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
	
 		- @property (copy)  NSString* invokeString;
                                
		- (void)setOrientation:(NSArray *)arguments;

	@end

Add into AppDelegate.m

	...
		- (void) dealloc
		{
			[super dealloc];
		}

		- (void)setOrientation:(NSArray *)arguments
		{
			self.viewController.supportedOrientations = arguments;
		}
	@end

Add field into Supporting Files / <PROJECT>.plist

	name: orientation (value: Orientation)

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