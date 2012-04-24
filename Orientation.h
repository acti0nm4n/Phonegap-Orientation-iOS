//
//  MyClass.h
//
//  Created by Nimish Nayak on 08/08/2011. 
//  Copyright 2011 Nimish Nayak. All rights reserved.
#import <Foundation/Foundation.h>
#import <PhoneGap/PGPlugin.h>
  
@interface Orientation : PGPlugin {
    
     NSString* callbackID;  
 }

@property (nonatomic, copy) NSString* callbackID;

//Instance Method  
- (void) setAllowed:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
 
@end