//
//  GG.m
//  TacoBurrito
//
//  Created by Kevin Frans on 11/12/13.
//
//

#import "GG.h"
#import "Title.h"

@implementation GG

-(id) init
{
	if ((self = [super init]))
	{
        
        
        
        
        [self scheduleUpdate];
        

        ggbutton = [CCSprite spriteWithFile:@"gg.png"];
        ggbutton.position = ccp(160,120);
        [self addChild:ggbutton];
        
        CCLabelTTF *hslabel = [CCLabelTTF labelWithString:@"Score:" fontName:@"Avenir" fontSize:35];
        [self addChild:hslabel];
        hslabel.position = ccp(160,400);
        
        CCLabelTTF *hs = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",[[NSUserDefaults standardUserDefaults] integerForKey:@"score"]] fontName:@"Avenir" fontSize:45];
        [self addChild:hs];
        hs.position = ccp(160,350);
        
        
        
        CCLabelTTF *scorelabel = [CCLabelTTF labelWithString:@"High Score:" fontName:@"Avenir" fontSize:15];
        [self addChild:scorelabel];
        scorelabel.position = ccp(50,465);
        
        CCLabelTTF *score = [CCLabelTTF labelWithString:[NSString stringWithFormat:@"%d",[[NSUserDefaults standardUserDefaults] integerForKey:@"highscore"]] fontName:@"Avenir" fontSize:20];
        [self addChild:score];
        score.position = ccp(50,440);
        
        
        NSString* banters = @"game over";
        int randnum = 0;
        
        randnum = arc4random() % 20;
        
        switch(randnum)
        {
            case 0: banters = @"game over";
                break;
            case 1: banters = @"gg.";
                break;
            case 2: banters = @"you lose!";
                break;
            case 3: banters = @"u screwed up";
                break;
            case 4: banters = @"that was a taco";
                break;
            case 5: banters = @"awwwwwww";
                break;
            case 6: banters = @"u mad?";
                break;
            case 7: banters = @"sigh not again";
                break;
            case 8: banters = @"nice try";
                break;
            case 9: banters = @"such lose wowe";
                break;
            case 10: banters = @"the end";
                break;
            case 11: banters = @"games over";
                break;
            case 12: banters = @"you died";
                break;
            case 13: banters = @"looooooser";
                break;
            case 14: banters = @"not bad";
                break;
            case 15: banters = @"dissapointment";
                break;
            case 16: banters = @"winner != you";
                break;
            case 17: banters = @"meh.";
                break;
            case 18: banters = @"aw u lost";
                break;
            case 19: banters = @"GAMES OVER";
                break;
            
        }
        
        
        CCLabelTTF *banter = [CCLabelTTF labelWithString:banters fontName:@"Avenir" fontSize:45];
        [self addChild:banter];
        banter.color = ccc3(231, 76, 60);
        banter.position = ccp(160,240);
        
        
    }
    
	return self;
}



-(void) update:(ccTime)delta
{
    KKInput* input = [KKInput sharedInput];

    if ([input isAnyTouchOnNode:ggbutton touchPhase:KKTouchPhaseBegan])
    {
        [[CCDirector sharedDirector] replaceScene: (CCScene*)[[Title alloc] init]];
    }
    
}

@end
