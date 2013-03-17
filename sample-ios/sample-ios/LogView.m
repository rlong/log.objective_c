//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//


#import "LogView.h"

@implementation LogView


#pragma mark -
#pragma mark instance lifecycle 


-(void)dealloc {
    
    [self setLogText:nil];
    
    [super dealloc];
    
}


#pragma mark -
#pragma mark fields


// logText
//UITextView* _logText;
//@property (nonatomic, retain) IBOutlet UITextView* logText;
@synthesize logText = _logText;


@end
