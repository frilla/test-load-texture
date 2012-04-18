//
//  HelloWorldLayer.m
//  TestTextureLoading
//
//  Created by Nam Hoang on 4/18/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
//		// create and initialize a Label
//		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
//
//		// ask director the the window size
//		CGSize size = [[CCDirector sharedDirector] winSize];
//	
//		// position the label on the center of the screen
//		label.position =  ccp( size.width /2 , size.height/2 );
//		
//		// add the label as a child to this Layer
//		[self addChild: label];
        
        CCMenuItem *b1 = [CCMenuItemImage 
                                    itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                                    target:self selector:@selector(b1)];
        CCMenuItem *b2 = [CCMenuItemImage 
                                    itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                                    target:self selector:@selector(b2)];
        CCMenuItem *b3 = [CCMenuItemImage 
                                    itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                                    target:self selector:@selector(b3)];
        CCMenuItem *b4 = [CCMenuItemImage 
                                    itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                                    target:self selector:@selector(b4)];
        CCMenu *starMenu = [CCMenu menuWithItems:b1, b2, b3, b4, nil];
        starMenu.position = ccp(240, 220);
        [starMenu alignItemsHorizontallyWithPadding:30];
        [self addChild:starMenu z:100];
        
        
        CCMenuItem *b5 = [CCMenuItemImage 
                          itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                          target:self selector:@selector(b5)];
        CCMenuItem *b6 = [CCMenuItemImage 
                          itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                          target:self selector:@selector(b6)];
        CCMenuItem *b7 = [CCMenuItemImage 
                          itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                          target:self selector:@selector(b7)];
        CCMenuItem *b8 = [CCMenuItemImage 
                          itemFromNormalImage:@"Icon.png" selectedImage:@"Icon.png" 
                          target:self selector:@selector(b8)];
        starMenu = [CCMenu menuWithItems:b5, b6, b7, b8, nil];
        starMenu.position = ccp(240, 100);
        [starMenu alignItemsHorizontallyWithPadding:30];
        [self addChild:starMenu z:100];

	}
	return self;
}

-(void) b1
{
    CCLOG(@"1");
    CCSprite *sprite = [CCSprite spriteWithFile:@"1024_32.pvr.ccz"];
    [self addChild:sprite z:0];
}

-(void) b2
{
    CCLOG(@"2");
    CCSprite *sprite = [CCSprite spriteWithFile:@"1024_32.png"];
    [self addChild:sprite z:0];
}

-(void) b3
{
    CCLOG(@"3");
    CCSprite *sprite = [CCSprite spriteWithFile:@"1023_32.pvr.ccz"];
    [self addChild:sprite z:0];
}

-(void) b4
{
    CCLOG(@"4");
    CCSprite *sprite = [CCSprite spriteWithFile:@"1023_32.png"];
    [self addChild:sprite z:0];
}

-(void) b5
{
    CCLOG(@"5");
    CCSprite *sprite = [CCSprite spriteWithFile:@"2048_32.pvr.ccz"];
    [self addChild:sprite z:0];
}

-(void) b6
{
    CCLOG(@"6");
    CCSprite *sprite = [CCSprite spriteWithFile:@"2048_32.png"];
    [self addChild:sprite z:0];
}

-(void) b7
{
    CCLOG(@"7");
    CCSprite *sprite = [CCSprite spriteWithFile:@"2047_32.pvr.ccz"];
    [self addChild:sprite z:0];
}

-(void) b8
{
    CCLOG(@"8");
    CCSprite *sprite = [CCSprite spriteWithFile:@"2047_32.png"];
    [self addChild:sprite z:0];
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
