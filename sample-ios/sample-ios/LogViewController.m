//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//


#import "JBLog.h"
#import "JBSimpleLogConsumer.h"
#import "LogView.h"
#import "LogViewController.h"


@implementation LogViewController



-(LogView*)getTypedView {
	return (LogView*)[self view];
}

#pragma mark -
#pragma mark UI lifecycle


-(void)viewDidLoad {
	
    
	Log_enteredMethod();
    
    [[self navigationItem] setTitle:@"LogViewController"];

    
    id <JBLogConsumer> logConsumer = [JBLog getLogConsumer];
    
    if( nil == logConsumer ) {
        Log_warnString(@"nil == logConsumer");
        return;
    }
    
    if( ![logConsumer isKindOfClass:[JBSimpleLogConsumer class]] ) {
        Log_warnFormat(@"![logConsumer isKindOfClass:[JBSimpleLogConsumer class]]; NSStringFromClass([logConsumer class]) = '%@'", NSStringFromClass([logConsumer class]));
        return;
    }
    
    JBSimpleLogConsumer* simpleLogConsumer = (JBSimpleLogConsumer*)logConsumer;
    
    
    NSArray* recentLogEntries = [simpleLogConsumer getRecentLogEntries];
    
    
    NSMutableString* logContents = [[NSMutableString alloc] init];
    [logContents autorelease];
    
    for( NSString* logEntry in recentLogEntries ) {
        [logContents appendString:logEntry];
        [logContents appendString:@"\n"];
    }
    
    
    // show the log text in the `UITextView` ...
    
    LogView* myView = [self getTypedView];
    UITextView* logText = [myView logText];
    [logText setText:logContents];


}

#pragma mark instance lifecycle


-(id)init {
	
	LogViewController* answer = [super initWithNibName:@"LogView" bundle:nil];
    
	return answer;
}


@end
