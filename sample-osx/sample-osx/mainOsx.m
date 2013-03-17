//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <Cocoa/Cocoa.h>

#import "JBLog.h"

int main(int argc, char *argv[])
{
    
    Log_info(@"setting main thread name to `main`");
    [[NSThread currentThread] setName:@"main"];

    return NSApplicationMain(argc, (const char **)argv);
}
