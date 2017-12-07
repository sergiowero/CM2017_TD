//
//  TutorialViewController.m
//  proyecto-final
//
//  Created by Amalia Gastelum on 12/1/17.
//  Copyright © 2017 UAG. All rights reserved.
//

#import "TutorialViewController.h"
#import "InformationViewController.h"

@interface TutorialViewController ()
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@property (weak, nonatomic) IBOutlet UIButton *btnStart;
@property (strong, nonatomic) UIPageViewController *pageContainer;
@property (strong, nonatomic) NSMutableArray * pages;
@property  NSInteger *currentIndex;
@property  NSInteger *pendingIndex;


@end

@implementation TutorialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pages = [self generatePages];
    // obtener pantallas
    self.pageContainer = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageContainer.delegate = self;
    self.pageContainer.dataSource = self;
    InformationViewController *one = [self.pages objectAtIndex:0];
    NSArray *view = @[one];
    [self.pageContainer setViewControllers:view direction:UIPageViewControllerNavigationDirectionForward animated:false completion:nil];
    [self.view addSubview:self.pageContainer.view];
    self.pageContainer.view.backgroundColor = [UIColor colorWithRed: 0x14/255.0 green: 0x23/255.0 blue: 0x19/255.0 alpha:1.0];
    [self.view bringSubviewToFront:self.pageControl];
    [self.view bringSubviewToFront:self.btnStart];
    
    [self.pageControl setNumberOfPages:self.pages.count];
    self.pageControl.currentPage = 0;
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - UTils

// UIColor(red: 0x87/255.0, green: 0x36/255.0, blue: 0x1C/255.0, alpha: 1.0)

- (NSMutableArray *)generatePages {
    NSMutableArray *pages = [[NSMutableArray alloc]init];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InformationViewController *page1 = (InformationViewController *)[storyboard instantiateViewControllerWithIdentifier:@"tutorialPage1"];
    InformationViewController *page2 = (InformationViewController *)[storyboard instantiateViewControllerWithIdentifier:@"tutorialPage2"];
    InformationViewController *page4 = (InformationViewController *)[storyboard instantiateViewControllerWithIdentifier:@"tutorialPage4"];
    InformationViewController *page3 = (InformationViewController *)[storyboard instantiateViewControllerWithIdentifier:@"tutorialPage3"];
    
    page1.sliderIndex = 1;
    page2.sliderIndex = 2;
    page4.sliderIndex = 3;
    page3.sliderIndex = 4;
    
    
    [pages addObject:page1];
    [pages addObject:page2];
    [pages addObject:page4];
    [pages addObject:page3];
    
    return pages;
}

- (IBAction)btnStart:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    [[[[UIApplication sharedApplication]delegate] window] setRootViewController:vc];
    
}

#pragma mark - UIPageViewControllerDelegate

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger currentIndex = [self.pages indexOfObject:(InformationViewController *)viewController];
    if (currentIndex == 0) {
        return nil;
    }
    NSUInteger previousIndex = abs((int)(currentIndex - 1) % (int)self.pages.count);
    return (InformationViewController *)[self.pages objectAtIndex:previousIndex];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger currentIndex = [self.pages indexOfObject:(InformationViewController *)viewController];
    
    if (currentIndex == self.pages.count - 1) {
        return nil;
    }
    NSUInteger nextIndex = abs((int)(currentIndex + 1) % (int)self.pages.count);
    return (InformationViewController *)[self.pages objectAtIndex:nextIndex];
}
- (void)pageViewController:(UIPageViewController *)pageViewController willTransitionToViewControllers:(NSArray<UIViewController *> *)pendingViewControllers {
    self.pendingIndex = (NSInteger *)[self.pages indexOfObject:(InformationViewController *)pendingViewControllers.firstObject];
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed {
    if (completed) {
        self.currentIndex = self.pendingIndex;
        if (self.currentIndex != nil) {
            self.pageControl.currentPage = self.currentIndex;
            if (self.pageControl.numberOfPages - 1 == self.pageControl.currentPage) {
                [self.btnStart setHidden:false];
            } else {
                [self.btnStart setHidden:true];
            }
        } else {
            self.pageControl.currentPage = 0;
        }
    }
}

@end
