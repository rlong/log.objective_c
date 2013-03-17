//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <Foundation/Foundation.h>

@interface LogView : UIView {
    
    
	// logText
	UITextView* _logText;
	//@property (nonatomic, retain) IBOutlet UITextView* logText;
	//@synthesize logText = _logText;

    
}


// logText
//UITextView* _logText;
@property (nonatomic, retain) IBOutlet UITextView* logText;
//@synthesize logText = _logText;


@end
