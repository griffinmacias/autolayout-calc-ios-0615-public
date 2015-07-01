//
//  FISViewController.m
//  Open-Me
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIView *buttonsContainer;
@property (strong, nonatomic) IBOutlet UIButton *oneButton;
@property (strong, nonatomic) IBOutlet UIButton *twoButton;
@property (strong, nonatomic) IBOutlet UIButton *threeButton;
@property (strong, nonatomic) IBOutlet UIButton *fourButton;
@property (strong, nonatomic) IBOutlet UIButton *fiveButton;
@property (strong, nonatomic) IBOutlet UIButton *sixButton;
@property (strong, nonatomic) IBOutlet UIButton *sevenButton;
@property (strong, nonatomic) IBOutlet UIButton *eightButton;
@property (strong, nonatomic) IBOutlet UIButton *nineButton;
@property (strong, nonatomic) IBOutlet UIButton *zeroButton;
@property (strong, nonatomic) IBOutlet UIButton *divideButton;
@property (strong, nonatomic) IBOutlet UIButton *multiplyButton;
@property (strong, nonatomic) IBOutlet UIButton *subtractionButton;
@property (strong, nonatomic) IBOutlet UIButton *additionButton;
@property (strong, nonatomic) IBOutlet UIButton *equalButton;
@property (strong, nonatomic) IBOutlet UIButton *decimalButton;
@property (weak, nonatomic) IBOutlet UIView *textFieldContainer;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    self.textFieldContainer.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textFieldContainer removeConstraints:self.textFieldContainer.constraints];
    
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textField removeConstraints:self.textField.constraints];
    
    self.buttonsContainer.translatesAutoresizingMaskIntoConstraints = NO;
    [self.buttonsContainer removeConstraints:self.buttonsContainer.constraints];
    
    NSArray *buttons = @[self.oneButton,
                         self.twoButton,
                         self.threeButton,
                         self.fourButton,
                         self.fiveButton,
                         self.sixButton,
                         self.sevenButton,
                         self.eightButton,
                         self.nineButton,
                         self.zeroButton,
                         self.divideButton,
                         self.multiplyButton,
                         self.subtractionButton,
                         self.additionButton,
                         self.equalButton,
                         self.decimalButton];
    
    for (UIButton *button in buttons) {
        button.translatesAutoresizingMaskIntoConstraints = NO;
        [button removeConstraints:button.constraints];
    }

    
    
    NSDictionary *keysDictionary = @{@"buttonsContainer":self.buttonsContainer,
                                     @"textFieldContainer":self.textFieldContainer,
                                     @"oneButton":self.oneButton,
                                     @"twoButton":self.twoButton,
                                     @"threeButton":self.threeButton,
                                     @"fourButton":self.fourButton,
                                     @"fiveButton":self.fiveButton,
                                     @"sixButton":self.sixButton,
                                     @"sevenButton":self.sevenButton,
                                     @"eightButton":self.eightButton,
                                     @"nineButton":self.nineButton,
                                     @"zeroButton":self.zeroButton,
                                     @"divideButton":self.divideButton,
                                     @"multiplyButton":self.multiplyButton,
                                     @"subtractionButton":self.subtractionButton,
                                     @"equalButton":self.equalButton,
                                     @"decimalButton":self.decimalButton,
                                     @"textField":self.textField,
                                     @"additionButton":self.additionButton};
    
//    NSDictionary *metricDictionary = @{@"buttonHorizontal":@29, @"buttonVertical":@19};
    
    NSArray *textFieldHorizontalContainerConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[textFieldContainer]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:textFieldHorizontalContainerConstraints];
    
    NSArray *buttonHorizontalContainerConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[buttonsContainer]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonHorizontalContainerConstraints];
    
    NSArray *containersVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[textFieldContainer][buttonsContainer(textFieldContainer)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:containersVerticalConstraints];
    
    NSArray *buttonsOneVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[oneButton][fourButton(oneButton)][sevenButton(oneButton)][zeroButton(oneButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsOneVerticalConstraints];
    
    NSArray *buttonsTwoVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[twoButton][fiveButton(twoButton)][eightButton(twoButton)][decimalButton(twoButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsTwoVerticalConstraints];
    
    NSArray *buttonsThreeVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[threeButton][sixButton(threeButton)][nineButton(threeButton)][equalButton(threeButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsThreeVerticalConstraints];
    
    NSArray *buttonsFourVerticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[divideButton][multiplyButton(divideButton)][subtractionButton(divideButton)][additionButton(divideButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsFourVerticalConstraints];
    
    NSArray *buttonsOneHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[oneButton][twoButton(oneButton)][threeButton(oneButton)][divideButton(oneButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsOneHorizontalConstraints];
    
    NSArray *buttonsTwoHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[fourButton][fiveButton(fourButton)][sixButton(fourButton)][multiplyButton(fourButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsTwoHorizontalConstraints];
    
    NSArray *buttonsThreeHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[sevenButton][eightButton(sevenButton)][nineButton(sevenButton)][subtractionButton(sevenButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsThreeHorizontalConstraints];
    
    NSArray *buttonsFourHorizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[zeroButton][decimalButton(zeroButton)][equalButton(zeroButton)][additionButton(zeroButton)]|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:buttonsFourHorizontalConstraints];
    
    NSArray *vTextField = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30.0-[textField]" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:vTextField];
    
    NSArray *hTextField = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20.0-[textField]-20.0-|" options:0 metrics:nil views:keysDictionary];
    [self.view addConstraints:hTextField];
    
    

    
    

    

//    //Textfield Container
//    NSLayoutConstraint *topContainerTop = [NSLayoutConstraint constraintWithItem:self.textFieldContainer
//                                                                       attribute:NSLayoutAttributeTop
//                                                                       relatedBy:NSLayoutRelationEqual
//                                                                          toItem:self.view
//                                                                       attribute:NSLayoutAttributeTop
//                                                                      multiplier:1.0
//                                                                        constant:0];
//    [self.view addConstraint:topContainerTop];
//    
//    NSLayoutConstraint *topContainerBottom = [NSLayoutConstraint constraintWithItem:self.textFieldContainer
//                                                                       attribute:NSLayoutAttributeBottom
//                                                                       relatedBy:NSLayoutRelationEqual
//                                                                          toItem:self.view
//                                                                       attribute:NSLayoutAttributeBottom
//                                                                      multiplier:0.5
//                                                                        constant:0];
//    [self.view addConstraint:topContainerBottom];
//    
//    NSLayoutConstraint *topContainerWidth = [NSLayoutConstraint constraintWithItem:self.textFieldContainer
//                                                                          attribute:NSLayoutAttributeWidth
//                                                                          relatedBy:NSLayoutRelationEqual
//                                                                             toItem:self.view
//                                                                          attribute:NSLayoutAttributeWidth
//                                                                         multiplier:1.0
//                                                                           constant:0];
//    [self.view addConstraint:topContainerWidth];
//    
//    //Button Container
//    NSLayoutConstraint *bottomContainerTop = [NSLayoutConstraint constraintWithItem:self.buttonsContainer
//                                                                       attribute:NSLayoutAttributeTop
//                                                                       relatedBy:NSLayoutRelationEqual
//                                                                          toItem:self.view
//                                                                       attribute:NSLayoutAttributeTop
//                                                                      multiplier:0.5
//                                                                        constant:0];
//    [self.view addConstraint:bottomContainerTop];
//    
//    NSLayoutConstraint *bottomContainerBottom = [NSLayoutConstraint constraintWithItem:self.buttonsContainer
//                                                                          attribute:NSLayoutAttributeBottom
//                                                                          relatedBy:NSLayoutRelationEqual
//                                                                             toItem:self.view
//                                                                          attribute:NSLayoutAttributeBottom
//                                                                         multiplier:1
//                                                                           constant:0];
//    [self.view addConstraint:bottomContainerBottom];
//    
//    NSLayoutConstraint *bottomContainerWidth = [NSLayoutConstraint constraintWithItem:self.buttonsContainer
//                                                                         attribute:NSLayoutAttributeWidth
//                                                                         relatedBy:NSLayoutRelationEqual
//                                                                            toItem:self.view
//                                                                         attribute:NSLayoutAttributeWidth
//                                                                        multiplier:1.0
//                                                                          constant:0];
//    [self.view addConstraint:bottomContainerWidth];
//
//    
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
