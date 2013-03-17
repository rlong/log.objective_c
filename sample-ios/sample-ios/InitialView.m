//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//





#import "InitialView.h"
#import "JBLog.h"

@implementation InitialView



#pragma mark -
#pragma mark instance lifecycle


-(void)dealloc {
	
	[self setShowLog:nil];
	
	[super dealloc];
	
}


#pragma mark -
#pragma mark fields

// showLog
//UIBarButtonItem* _showLog;
//@property (nonatomic, retain) IBOutlet UIBarButtonItem* showLog;
@synthesize showLog = _showLog;




@end
