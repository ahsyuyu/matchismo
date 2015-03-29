//
//  ViewController.m
//  Machismo
//
//  Created by Anne on 2015/3/29.
//  Copyright (c) 2015年 Anne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flip: %d", self.flipCount];
}

- (IBAction)touchCardBtn:(UIButton *)sender {
    if([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"Minion_dave.jpg"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"white.png"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♦︎" forState:UIControlStateNormal];
    }
    self.flipCount++;

}


@end
