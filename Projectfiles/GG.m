//
//  GG.m
//  TacoBurrito
//
//  Created by Kevin Frans on 11/12/13.
//
//

#import "GG.h"
#import "HelloWorldLayer.h"

@implementation GG

-(id) init
{
	if ((self = [super init]))
	{
        
        
        
        [self scheduleUpdate];
        

        ggbutton = [CCSprite spriteWithFile:@"gg.png"];
        ggbutton.position = ccp(160,240);
        [self addChild:ggbutton];
        
        
    }
    
	return self;
}



-(void) update:(ccTime)delta
{
    KKInput* input = [KKInput sharedInput];

    if ([input isAnyTouchOnNode:ggbutton touchPhase:KKTouchPhaseBegan])
    {
        [[CCDirector sharedDirector] replaceScene: (CCScene*)[[HelloWorldLayer alloc] init]];
    }
    
}

@end
