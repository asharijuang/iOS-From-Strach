//
//  ViewController.m
//  iMusic
//
//  Created by Ashari Juang on 8/5/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"View sudah load");
}

- (void)viewDidUnload {
    [super viewDidUnload];
    
    NSLog(@"View sudah diunload");
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"view selesai/sudah ditampilkan 😃");
}
    
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"View akan ditampilkan");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
