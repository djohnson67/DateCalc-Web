//
//  ViewController.h
//  DateCalc
//
//  Created by Daniel Reid on 3/7/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateChooserViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (nonatomic) Boolean dateChooserVisible;
@property (nonatomic) BOOL isOK;

- (IBAction)showDateChooser:(UIBarButtonItem *)sender;


-(void)calculateDateDifference:(NSDate *)chosenDate;
@end
