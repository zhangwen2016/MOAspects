//
//  MOAspectsHookRangeTestCase.m
//  MOAspectsDemo
//
//  Created by HiromiMotodera on 7/4/15.
//  Copyright (c) 2015 MOAI. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "MOAspectsHookRange.h"

@interface MOAspectsHookRangeTestCase : XCTestCase

@end

@implementation MOAspectsHookRangeTestCase

- (void)testMOAspectsEqualHookRanges
{
    XCTAssertTrue(MOAspectsEqualHookRanges(MOAspectsMakeHookRange(0, 0),
                                           MOAspectsMakeHookRange(0, 0)));
    XCTAssertTrue(MOAspectsEqualHookRanges(MOAspectsMakeHookRange(1, 1),
                                           MOAspectsMakeHookRange(1, 1)));
    XCTAssertFalse(MOAspectsEqualHookRanges(MOAspectsMakeHookRange(1, 1),
                                            MOAspectsMakeHookRange(0, 0)));
}

- (void)testMOAspectsHookRangeSingle
{
    XCTAssertTrue(MOAspectsHookRangeSingle.location == 0);
    XCTAssertTrue(MOAspectsHookRangeSingle.length == 0);
    XCTAssertTrue(MOAspectsEqualHookRanges(MOAspectsHookRangeSingle,
                                           MOAspectsMakeHookRange(0, 0)));
}

- (void)testMOAspectsHookRangeAll
{
    XCTAssertTrue(MOAspectsHookRangeAll.location == 0);
    XCTAssertTrue(MOAspectsHookRangeAll.length == INT_MAX);
    XCTAssertTrue(MOAspectsEqualHookRanges(MOAspectsHookRangeAll,
                                           MOAspectsMakeHookRange(0, INT_MAX)));
}

@end
