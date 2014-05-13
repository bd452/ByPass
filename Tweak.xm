#import <libactivator/libactivator.h>
#import <libPass/libPass.h>

@interface ByPass : NSObject<LAListener>
@end

@implementation ByPass
//Activator Action

-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event
{
	//Tells libPass to unlock the device
	[[LibPass sharedInstance] unlockWithCodeEnabled:NO];

	//Tells Activator to ignore the default phone's action
    // This should probably get called...?
	//[event setHandled:YES];
}

+(void) load
{
    if ([[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"com.apple.springboard"])
        [[%c(LAActivator) sharedInstance] registerListener:[self new] forName:@"com.bd452.bypass"];
}
@end
