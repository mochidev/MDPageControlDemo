//
//  MDViewController.m
//  MDPageControlDemo
//
//  Created by Dimitri Bouniol on 4/23/13.
//  Copyright (c) 2013 Mochi Development, Inc. All rights reserved.
//
//  Copyright (c) 2013 Dimitri Bouniol, Mochi Development, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software, associated artwork, and documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  1. The above copyright notice and this permission notice shall be included in
//     all copies or substantial portions of the Software.
//  2. Neither the name of Mochi Development, Inc. nor the names of its
//     contributors or products may be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Mochi Dev, and the Mochi Development logo are copyright Mochi Development, Inc.
//

#import "MDViewController.h"
#import "MDPageControl.h"

@interface MDViewController ()

@end

@implementation MDViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _pageControl2.pageIndicatorSpacing = 32;
    _pageControl2.pageIndicatorImage = [MDPageControl roundPageIndicatorWithSize:CGSizeMake(12, 12)];
    
    [_pageControl3 setImage:[UIImage imageNamed:@"Search.png"] forPage:0];
    [_pageControl3 setImage:[UIImage imageNamed:@"Search.png"] forPage:2];
    [_pageControl3 setImage:[UIImage imageNamed:@"Search.png"] forPage:4];
    [_pageControl3 setImage:[UIImage imageNamed:@"Search.png"] forPage:6];
    [_pageControl3 setImage:[UIImage imageNamed:@"Search.png"] forPage:8];
    
    _scrollView.contentSize = CGSizeMake(5*self.view.bounds.size.width, _scrollView.frame.size.height);
    
    UIView *colorView;
    
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    colorView.center = CGPointMake(self.view.bounds.size.width/2., _scrollView.frame.size.height/2.);
    colorView.backgroundColor = [UIColor yellowColor];
    [_scrollView addSubview:colorView];
    
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    colorView.center = CGPointMake(3*self.view.bounds.size.width/2., _scrollView.frame.size.height/2.);
    colorView.backgroundColor = [UIColor greenColor];
    [_scrollView addSubview:colorView];
    
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    colorView.center = CGPointMake(5*self.view.bounds.size.width/2., _scrollView.frame.size.height/2.);
    colorView.backgroundColor = [UIColor blueColor];
    [_scrollView addSubview:colorView];
    
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    colorView.center = CGPointMake(7*self.view.bounds.size.width/2., _scrollView.frame.size.height/2.);
    colorView.backgroundColor = [UIColor redColor];
    [_scrollView addSubview:colorView];
    
    colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    colorView.center = CGPointMake(9*self.view.bounds.size.width/2., _scrollView.frame.size.height/2.);
    colorView.backgroundColor = [UIColor orangeColor];
    [_scrollView addSubview:colorView];
    
    // These work too, if you want to use them.
//    [[MDPageControl appearance] setPageIndicatorSpacing:50];
//    [[MDPageControl appearance] setPageIndicatorTintColor:[UIColor brownColor]];
//    [[MDPageControl appearance] setCurrentPageIndicatorTintColor:[UIColor redColor]];
//    [[MDPageControl appearance] setPageIndicatorImage:[UIImage imageNamed:@"Search.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
