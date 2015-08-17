//
//  InterfaceController.m
//  WatchKitDemo WatchKit Extension
//
//  Created by Cocoon Jin on 15/8/16.
//  Copyright © 2015年 Kdan Mobile. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (nonatomic, strong) IBOutlet WKInterfaceButton *button;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark - IBAction
- (IBAction)buttonAction:(id)sender {
    __block WKInterfaceButton *button = self.button;
    WKAlertAction *englishAction = [WKAlertAction actionWithTitle:@"English"
                                                           style:WKAlertActionStyleDestructive
                                                          handler:^{
                                                              [button setTitle:@"Kdan Mobile"];
                                                          }];
    WKAlertAction *chineseAction = [WKAlertAction actionWithTitle:@"中文"
                                                            style:WKAlertActionStyleDestructive
                                                          handler:^{
                                                              [button setTitle:@"凯钿软件"];
                                                          }];
    [self presentAlertControllerWithTitle:@"Kdan Mobile"
                                  message:@"欢迎阅读Cocoon Jin iOS9系列文章!"
                           preferredStyle:WKAlertControllerStyleAlert
                                  actions:@[englishAction, chineseAction]];
}

@end



