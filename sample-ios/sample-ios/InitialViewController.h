//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <UIKit/UIKit.h>

#import "InitialView.h"

@interface InitialViewController : UIViewController


#pragma mark -
#pragma mark UI/NIB callbacks

- (IBAction)onShowLog:(id)sender;
- (IBAction)logMessages:(id)sender;
- (IBAction)raiseUncaughtException:(id)sender;

@end
