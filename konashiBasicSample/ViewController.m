//
//  ViewController.m
//  konashiBasicSample
//
//  Created by Kenji Ohno on 2015/03/11.
//  Copyright (c) 2015年 KenjiOhno. All rights reserved.
//

#import "ViewController.h"
#import "Konashi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [Konashi initialize];
    [Konashi addObserver:self selector:@selector(ready) name:KonashiEventReadyToUseNotification];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)find:(id)sender {
    [Konashi find];
}

- (void)ready
{
    [Konashi pinMode:KonashiLED2 mode:KonashiPinModeOutput];
    [Konashi digitalWrite:KonashiLED2 value:KonashiLevelHigh];
}
@end
