//
//  ViewController.m
//  iMusic
//
//  Created by Ashari Juang on 8/5/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import "ViewController.h"
#import "PreferencesViewController.h"

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

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"View sudah menghilang");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPreferences:(id)sender {
    NSLog(@"Show Preferences");
    id controller = [[PreferencesViewController alloc] initWithNibName:@"PreferencesView" bundle:nil];
    [self presentViewController:controller animated:YES completion:NULL];
}

- (IBAction)showList:(id)sender {
    NSLog(@"Show List");
    
    // jika kita bisa menghilangkan preferences nib dengan comment dissmissveiw controller, apa jadinya jika dijalankan perintah ini
    // apakah tampilan akan hilang
    // [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
