//
//  ViewController.h
//  iMusic
//
//  Created by Ashari Juang on 8/5/15.
//  Copyright (c) 2015 KodeJS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *logoView;


- (IBAction)showPreferences:(id)sender;
- (IBAction)showList:(id)sender;

@end

