//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import "AppDelegateOsx.h"
#import "JBLog.h"



// vvv http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/

void logUncaughtException(NSException *exception);
void logUncaughtException(NSException *exception) {
    
    
    Log_errorException( exception );
    
}

// ^^^ http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

@interface AppDelegateOsx ()

// initialWindowController
//InitialWindowController* _initialWindowController;
@property (nonatomic, retain) InitialWindowController* initialWindowController;
//@synthesize initialWindowController = _initialWindowController;


@end

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
#pragma mark -

@implementation AppDelegateOsx

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Log_enteredMethod();
    
    
    // vvv http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/
    
    Log_debugPointer( NSGetUncaughtExceptionHandler() );
    
    if( nil == NSGetUncaughtExceptionHandler() ) {
        NSSetUncaughtExceptionHandler(&logUncaughtException);
    }
    
    // ^^^ http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/
    

    
    InitialWindowController* initialWindowController = [[InitialWindowController alloc] init];
    {
        [self setInitialWindowController:initialWindowController];
        [initialWindowController showWindow:self];
    }
    [initialWindowController release];
    
}


#pragma mark -
#pragma mark instance lifecycle




-(void)dealloc {
	
	[self setInitialWindowController:nil];
	
	[super dealloc];
	
}

#pragma mark -
#pragma mark fields

// initialWindowController
//InitialWindowController* _initialWindowController;
//@property (nonatomic, retain) InitialWindowController* initialWindowController;
@synthesize initialWindowController = _initialWindowController;

@end
