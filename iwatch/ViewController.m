//
//  ViewController.m
//  iwatch
//
//  Created by Alen Alexander on 11/03/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize iphonelbl,iphonetxtfld;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Synchronise_action:(id)sender {
    
    self.iphonelbl.text=[iphonetxtfld text];
    
    NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc]initWithSuiteName:@"group.qagate.shareddata"];
    [sharedDefaults setObject:iphonelbl.text forKey:@"userinput"];
    [sharedDefaults synchronize];
    
}

@end
