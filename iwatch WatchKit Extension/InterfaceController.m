//
//  InterfaceController.m
//  iwatch WatchKit Extension
//
//  Created by Alen Alexander on 11/03/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end

int x=0;

@implementation InterfaceController
@synthesize watchlbl;

- (void)awakeWithContext:(id)context {
    
   
    [super awakeWithContext:context];
    [self.watchlbl setText:@"Hello User"];

  
}



- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self.watchlbl setText:@""];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    //[super didDeactivate];
}


- (IBAction)Up_action {
    x++;
    NSString *s1=[NSString stringWithFormat:@"%d",x];
    [self.watchlbl setText:s1];
}


- (IBAction)Down_action {
    x--;
    NSString *s2=[NSString stringWithFormat:@"%d",x];
    [self.watchlbl setText:s2];
    
    
//    NSUserDefaults *sharedDefaults = [[NSUserDefaults alloc]initWithSuiteName:@"group.qagate.shareddata"];
//    [sharedDefaults synchronize];
//    self.watchlbl.text=[sharedDefaults stringForKey:@"userinput"];

}

@end



