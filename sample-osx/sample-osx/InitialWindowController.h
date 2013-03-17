//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <Foundation/Foundation.h>

@interface InitialWindowController : NSWindowController {
    
}



#pragma mark -
#pragma mark UI/NIB callbacks


- (IBAction)logMessages:(id)sender;

- (IBAction)raiseUncaughtException:(id)sender;

@end
