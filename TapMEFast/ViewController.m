//
//  ViewController.m
//  TapMEFast
//
//  Created by Sol on 3/8/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    timeInt = 10;
    scoreInt = 0;
    gameMode = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
}


- (IBAction)startGame:(id)sender {
    if (timeInt == 10){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        
        if (timeInt == 0 ){
            [timer invalidate];
        }
        
    }
    
}

-(void) startCounter{
    timeInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i", timeInt];
}



@end
