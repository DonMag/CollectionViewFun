//
//  ViewController.h
//  CollectionViewFun
//
//  Created by DonMag on 12/30/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *cv1;
@property (weak, nonatomic) IBOutlet UICollectionView *cv2;
@property (weak, nonatomic) IBOutlet UICollectionView *cv3;
@property (weak, nonatomic) IBOutlet UICollectionView *cv4;
@property (weak, nonatomic) IBOutlet UICollectionView *cv5;

@end

