//
//  ViewController.m
//  Registro
//
//  Created by Mario Rueda on 12/5/17.
//  Copyright © 2017 Mario Rueda. All rights reserved.
//

#import "Register.h"

@interface Register ()

@end

@implementation Register

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnSubmit:(id)sender {
    NSDictionary *dataToSend = [NSDictionary dictionaryWithObjectsAndKeys:
                                self.txtUser.text, @"name",
                                self.txtEmail.text, @"email",
                                self.txtPhone.text, @"phone", nil];
    
    [WebServices register:dataToSend
     calledBy:self
     withSuccess:@selector(registerDidEnd:)
     andFailure:@selector(registerFailure:)];
}

- (void)registerDidEnd:(id)result{
    NSLog(@"registerDidEnd:");
    self.txtUser.text = @"";
    self.txtEmail.text = @"";
    self.txtPhone.text = @"";
    self.lblMessage.text = @"REGISTRO EXITOSO";
    //self.lblMessage.backgroundColor = [UIColor greenColor];
}

- (void)registerFailure:(id)result{
    NSLog(@"registerFailure:");
    self.lblMessage.text = @"ERROR AL REGISTRARSE";
    //self.lblMessage.backgroundColor = [UIColor redColor];
}


@end
