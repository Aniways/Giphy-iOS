//
//  AXCGiphyImage.m
//  AXCGiphy
//
//  Created by alexchoi on 8/18/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

#import "AXCGiphyImage.h"
@interface AXCGiphyImage ()
@property (strong, readwrite, nonatomic) NSURL * url;
@property (readwrite, nonatomic) CGFloat width;
@property (readwrite, nonatomic) CGFloat height;
@property (readwrite, nonatomic) NSUInteger size;
@end

@implementation AXCGiphyImage

- (instancetype) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.url = [NSURL URLWithString:dictionary[@"url"]];
    self.width = [dictionary[@"width"] floatValue];
    self.height = [dictionary[@"height"] floatValue];
    if (dictionary[@"size"]){
        self.size = [dictionary[@"size"] integerValue];
    }
    return self;
}

@end
