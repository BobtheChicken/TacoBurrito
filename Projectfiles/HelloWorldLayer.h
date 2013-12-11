/*
 * Kobold2D™ --- http://www.kobold2d.org
 *
 * Copyright (c) 2010-2011 Steffen Itterheim. 
 * Released under MIT License in Germany (LICENSE-Kobold2D.txt).
 */

#import "cocos2d.h"

@interface HelloWorldLayer : CCLayer
{
	NSString* helloWorldString;
	NSString* helloWorldFontName;
	int helloWorldFontSize;
    
    int previousimage;
    
    CCSprite* ship;
    CCSprite* image;
    
    CCLabelTTF* scoreLabel;
    
    int score;
    
    int timeleft;
    
    bool istaco;
    
    CCSprite* tacobutton;
    CCSprite* burritobutton;
    CCSprite* ggbutton;
}

@property (nonatomic, copy) NSString* helloWorldString;
@property (nonatomic, copy) NSString* helloWorldFontName;
@property (nonatomic) int helloWorldFontSize;

@end
