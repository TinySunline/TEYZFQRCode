//
//  QRCodeControl.h
//  TinyEmbed
//
//  Created by kingdomrainrain on 17/4/17.
//  Copyright © 2017年 Sunline. All rights reserved.
//

#import "TEYZFQRCode.h"
#import "QRCodeGenerator.h"


@interface TEYZFQRCode()

@property(nonatomic, assign) NSString *value;

@end

@implementation TEYZFQRCode

- (id)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor redColor];
        
        [self addTarget:self action:@selector(touchUpInside:event:) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void)touchUpInside:(id)sender event:(UIEvent*)event
{
    [self executiveEvent:@"aa" array:@[@"a", @"b", @"c"]];
}

-(void)executiveEvent:(NSString *)event array:(NSArray *)array
{
    UIView *supView = self.superview;
    if([supView respondsToSelector:@selector(executiveEvent: array:)]) {
        [supView performSelector:@selector(executiveEvent: array:) withObject:event withObject:array];
    }
}

-(void)setParam:(NSString *)name :(id)value
{
    if([name isEqual:@"code"]) {
        self.value = value;
    }
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    UIImage *image = [QRCodeGenerator qrImageForString:self.value imageSize:self.bounds.size.width];
    [image drawInRect:self.bounds];
}

@end
