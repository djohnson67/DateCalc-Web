//
//  ViewController.m
//  DateCalc
//
//  Created by Daniel Reid on 3/7/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDateChooser:(UIBarButtonItem *)sender {
    
    if(!self.dateChooserVisible)
    {
        [self performSegueWithIdentifier:@"toDateChooser" sender:sender];
        self.dateChooserVisible = YES;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    ((DateChooserViewController *)segue.destinationViewController).delegate = self;
}

-(void)calculateDateDifference:(NSDate *)chosenDate
{
    int secondsInADay = 86400;
    NSDate *todaysDate;
    NSString *differenceOutput;
    NSString *todaysDateString;
    NSString *chosenDateString;
    NSDateFormatter *dateFormat;
    NSTimeInterval difference; //not an object
    
    todaysDate = [NSDate date];//today
    difference = [todaysDate timeIntervalSinceDate:chosenDate] / secondsInADay; //
    dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MMMM d, YYYY hh:mm:ssa"];
    todaysDateString = [dateFormat stringFromDate:todaysDate];
    chosenDateString = [dateFormat stringFromDate:chosenDate];
    
    differenceOutput = [[NSString alloc] initWithFormat:@"Difference between the chosen date (%@) and today (%@) in days: %1.2f", chosenDateString,todaysDateString,fabs(difference)]; //fabs() is a c function for returning absolute floating point values
                  
    self.outputLabel.text = differenceOutput;
    
}

@end
