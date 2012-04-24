//
//  SetOrientation.m
//  
#import "Orientation.h" 
#import "AppDelegate.h"
          
@implementation Orientation 

@synthesize callbackID;

-(void)setAllowed:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{              
    NSLog(@"Allow orientation:%@", [options description]);
        
    AppDelegate* appDelegate = (AppDelegate*) [UIApplication sharedApplication].delegate;

    NSMutableArray *allowed = [NSMutableArray array];

    if ([[options objectForKey:@"pp"] intValue] == 1)
        [allowed addObject:[NSNumber numberWithInt:UIDeviceOrientationPortrait]];
    
    if ([[options valueForKey:@"pd"] intValue] == 1)
        [allowed addObject:[NSNumber numberWithInt:UIDeviceOrientationPortraitUpsideDown]];
    
    if ([[options valueForKey:@"ll"] intValue] == 1)
        [allowed addObject:[NSNumber numberWithInt:UIDeviceOrientationLandscapeLeft]];
     
    if ([[options objectForKey:@"lr"] intValue] == 1)
        [allowed addObject:[NSNumber numberWithInt:UIDeviceOrientationLandscapeRight]];

    [appDelegate setOrientation:allowed];
}
 
@end