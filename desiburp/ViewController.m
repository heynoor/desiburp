//
//  ViewController.m
//  desiburp
//
//  Created by Noor Ali Lakhani on 22/4/14.
//  Copyright (c) 2014 Noor Ali Lakhani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;
@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;
@end

@implementation ViewController

- (IBAction)changeLabel:(id)sender {
    //
    NSString *contents = [[ self simpleTextField ] text ];
    NSString *message = [ NSString stringWithFormat:@"Hello, %@", contents];
    [[self simpleLabel] setText:message];
    [[self simpleTextField] resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [[self simpleTextField] resignFirstResponder];
    return YES;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [[self view] endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Immediate Alert" message:@"Here is your alert message." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
    [myAlert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
