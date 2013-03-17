//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <Cocoa/Cocoa.h>

#import "InitialWindowController.h"

@interface AppDelegateOsx : NSObject <NSApplicationDelegate> {
    
    // initialWindowController
    InitialWindowController* _initialWindowController;
    //@property (nonatomic, retain) InitialWindowController* initialWindowController;
    //@synthesize initialWindowController = _initialWindowController;

}

@property (assign) IBOutlet NSWindow *window;

@end
