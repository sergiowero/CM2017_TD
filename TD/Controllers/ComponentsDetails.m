//
//  ComponentsDetailsViewController.m
//  TD
//
//  Created by EDGE on 30/11/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "ComponentsDetails.h"
#import "Components.h"

@interface ComponentsDetails ()

@end

@implementation ComponentsDetails

@synthesize componentsObject;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initController];
    
    [self.navigationController setNavigationBarHidden:YES];
    
}

- (void)initController {
    
     //NSLog(@"Init with  %@", componentsObject.details);
    _imageMain.image = componentsObject.image;
    _lblName.text = componentsObject.name;
    _textViewDetails.text = componentsObject.details;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonPress:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController setNavigationBarHidden:NO];

}



@end
