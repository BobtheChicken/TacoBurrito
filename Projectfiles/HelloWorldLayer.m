/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "HelloWorldLayer.h"
#import "SimpleAudioEngine.h"
#import "GG.h"

@interface HelloWorldLayer (PrivateMethods)
@end

@implementation HelloWorldLayer

@synthesize helloWorldString, helloWorldFontName;
@synthesize helloWorldFontSize;

-(id) init
{
	if ((self = [super init]))
	{
        
        
    
        [self scheduleUpdate];
        
        CCSprite* title = [CCSprite spriteWithFile:@"title.png"];
        title.position = ccp(160,431);
        [self addChild:title z:11];
        
        [self initstuff];
        
        
    }

	return self;
}


-(void) initstuff
{
    
    
    previousimage = 0;
    
    score = 0;
    
    scoreLabel = [CCLabelTTF labelWithString:@"0" fontName:@"Marker Felt" fontSize:24];
    scoreLabel.position = ccp(160, 60); //Middle of the screen...
    [self addChild:scoreLabel z:1];
    
    timeleft = 75;
    
    tacobutton = [CCSprite spriteWithFile:@"taco.png"];
    tacobutton.position = ccp(80,35);
    [self addChild:tacobutton z:10];
    
    burritobutton = [CCSprite spriteWithFile:@"burrito.png"];
    burritobutton.position = ccp(240,35);
    [self addChild:burritobutton z:10];
    
    CCSprite* bg = [CCSprite spriteWithFile:@"white.png"];
    bg.position = [[CCDirector sharedDirector] screenCenter];
    [self addChild:bg z:-1];
    [self stretch:bg];
    
    [self newPicture];
}

-(void) update:(ccTime)delta
{
    //ship.position = ccp(ship.position.x + 1,ship.position.y);
    
    
    KKInput* input = [KKInput sharedInput];
    if ([input isAnyTouchOnNode:tacobutton touchPhase:KKTouchPhaseBegan])
    {
        if(istaco)
        {
        [self newPicture];
            [self addPoint];
        }
        else
        { 
            [self gameover];
            NSLog(@"gg");
        }
    }
    
    if ([input isAnyTouchOnNode:burritobutton touchPhase:KKTouchPhaseBegan])
    {
        if(!istaco)
        {
        [self newPicture];
            [self addPoint];

        }
        else
        {
            [self gameover];
            NSLog(@"gg");
        }
    }
    
    
    timeleft--;
    
    if(timeleft < 0)
    {
        [self gameover];
    }
    
}

- (void)addPoint
{
    score = score + 1; //I think: score++; will also work.
    [scoreLabel setString:[NSString stringWithFormat:@"%d", score]];
}


-(void) gameover
{
    if(score > [[NSUserDefaults standardUserDefaults] integerForKey:@"highscore"])
    {
        [[NSUserDefaults standardUserDefaults] setInteger:score forKey:@"highscore"];
    }
    
    
    [[NSUserDefaults standardUserDefaults] setInteger:score forKey:@"score"];
    [[CCDirector sharedDirector] replaceScene: (CCScene*)[[GG alloc] init]];
    
}


-(void) stretch:(CCSprite *) spriteToSetDimensions
{
    float scaleXDimensions = 320/[spriteToSetDimensions boundingBox].size.width;
    float scaleYDimensions = 320/[spriteToSetDimensions boundingBox].size.height;
    spriteToSetDimensions.scaleX = scaleXDimensions;
    spriteToSetDimensions.scaleY = scaleYDimensions;
}


-(void) newPicture
{
    
    int randompicture = arc4random() % 2;
   
    
    if(randompicture == 0)
    {
        
        istaco = true;
        
        [self removeChild:image];
        
        
        int random = 0;
        
        while(random == previousimage)
        {
        random = arc4random() % 10;
        }
        
        previousimage = random;
        
        if(random == 0)
        {
            image = [CCSprite spriteWithFile:@"taco1.jpg"];
        }
        if(random == 1)
        {
            image = [CCSprite spriteWithFile:@"taco2.jpg"];
        }
        if(random == 2)
        {
            image = [CCSprite spriteWithFile:@"taco3.jpg"];
        }
        if(random == 3)
        {
            image = [CCSprite spriteWithFile:@"taco4.jpg"];
        }
        if(random == 4)
        {
            image = [CCSprite spriteWithFile:@"taco5.png"];
        }
        if(random == 5)
        {
            image = [CCSprite spriteWithFile:@"taco6.jpg"];
        }
        if(random == 6)
        {
            image = [CCSprite spriteWithFile:@"taco7.gif"];
        }
        if(random == 7)
        {
            image = [CCSprite spriteWithFile:@"taco8.jpg"];
        }
        if(random == 8)
        {
            image = [CCSprite spriteWithFile:@"taco9.jpg"];
        }
        if(random == 9)
        {
            image = [CCSprite spriteWithFile:@"taco10.jpg"];
        }
       
        

    }
    if(randompicture == 1)
    {
        
        istaco = false;
        
        [self removeChild:image];
        
        int random = 0;
        
        while(random == previousimage)
        {
            random = arc4random() % 10;
        }
        
        previousimage = random;
        
        if(random == 0)
        {
            image = [CCSprite spriteWithFile:@"burrito1.png"];
        }
        if(random == 1)
        {
            image = [CCSprite spriteWithFile:@"burrito2.jpg"];
        }
        if(random == 2)
        {
            image = [CCSprite spriteWithFile:@"burrito3.jpg"];
        }
        if(random == 3)
        {
            image = [CCSprite spriteWithFile:@"burrito4.jpg"];
        }
        if(random == 4)
        {
            image = [CCSprite spriteWithFile:@"burrito5.png"];
        }
        if(random == 5)
        {
            image = [CCSprite spriteWithFile:@"burrito6.jpg"];
        }
        if(random == 6)
        {
            image = [CCSprite spriteWithFile:@"burrito7.jpg"];
        }
        if(random == 7)
        {
            image = [CCSprite spriteWithFile:@"burrito8.jpg"];
        }
        if(random == 8)
        {
            image = [CCSprite spriteWithFile:@"burrito9.jpg"];
        }
        if(random == 9)
        {
            image = [CCSprite spriteWithFile:@"burrito10.jpg"];
        }

    }
    
    [self addChild:image];
    
    [self stretch:image];
    image.position = [[CCDirector sharedDirector] screenCenter];
    
    timeleft = 75;
    
}

@end
