//
//  DateChooserViewController.h
//  DateCalc
//
//  Created by Daniel Reid on 3/7/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface DateChooserViewController : UIViewController

//properties
@property (weak,nonatomic)id delegate; //new property with type of "id"  - will set this property in the prepareForSegue method in calling "ViewController.h" 

//actions
- (IBAction)setDateTime:(UIDatePicker *)sender;
- (IBAction)dismissDateChooser:(UIButton *)sender;



@end
