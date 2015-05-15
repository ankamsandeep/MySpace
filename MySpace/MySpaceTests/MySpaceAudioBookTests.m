//
//  MySpaceAudioBookTests.m
//  MySpace
//
//  Created by Sandeep Ankam on 5/14/15.
//  Copyright (c) 2015 SandeepAnkam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "MySpaceAudioBook.h"

@interface MySpaceAudioBookTests : XCTestCase

@end

@implementation MySpaceAudioBookTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test case in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test case in the class.
    
    [super tearDown];
}

/*
    This test case tests the scenario if all the parameters are nil
 */
- (void)testInitWithTitle_author_imageURL_with_nil_values {
    
    MySpaceAudioBook *returnedObject = [[MySpaceAudioBook alloc] initWithTitle:nil autohr:nil imageURL:nil];
    
    XCTAssertNil(returnedObject.title);
}

/*
    This test case test the scenario, if the title property on returned object is same as expected title
 */
- (void)testInitWithTitle_author_imageURL_sets_title_property {
    
    NSString *expectedTitle = @"Titanic";
    NSString *expectedAuthor = @"Test Author";
    NSString *imageURL = @"http://welcome.com";
    
    MySpaceAudioBook *returnedObject = [[MySpaceAudioBook alloc] initWithTitle: expectedTitle autohr:expectedAuthor imageURL:imageURL];
    
    XCTAssertTrue([expectedTitle isEqualToString:returnedObject.title]);
}

/*
    This test case test the scenario, if the author property on returned object is same as exptected author.
 */
- (void)testInitWithTitle_author_imageURL_sets_author_property {
    
    NSString *expectedTitle = @"Titanic";
    NSString *expectedAuthor = @"Test Author";
    NSString *imageURL = @"http://welcome.com";
    
    MySpaceAudioBook *returnedObject = [[MySpaceAudioBook alloc] initWithTitle: expectedTitle autohr:expectedAuthor imageURL:imageURL];
    
    XCTAssertTrue([expectedAuthor isEqualToString:returnedObject.author]);
}

@end
