//
//  Title.m
//  TacoBurrito
//
//  Created by Kevin Frans on 11/13/13.
//
//

#import "Title.h"
#import "HelloWorldLayer.h"



@implementation Title

-(id) init
{
	if ((self = [super init]))
	{
        
        
        
        [self scheduleUpdate];
        
        titlebg = [CCSprite spriteWithFile:@"titlescreen.png"];
        titlebg.position = [[CCDirector sharedDirector] screenCenter];
        [self addChild:titlebg z:-1];
        
        startbutton = [CCSprite spriteWithFile:@"start.png"];
        startbutton.position = ccp(160,100);
        [self addChild:startbutton];
        
        
    }
    
	return self;
}


-(void) update:(ccTime)delta
{
    KKInput* input = [KKInput sharedInput];
    if ([input isAnyTouchOnNode:startbutton touchPhase:KKTouchPhaseBegan])
    {
        [[CCDirector sharedDirector] replaceScene: (CCScene*)[[HelloWorldLayer alloc] init]];
    }
}

@end
