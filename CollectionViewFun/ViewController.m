//
//  ViewController.m
//  CollectionViewFun
//
//  Created by DonMag on 12/30/16.
//  Copyright © 2016 DonMag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
	
	NSArray *cellColors;

}

@end

@implementation ViewController

NSInteger items[5] = {16, 9, 13, 15, 18};

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_cv1.tag = 0;
	_cv2.tag = 1;
	_cv3.tag = 2;
	_cv4.tag = 3;
	_cv5.tag = 4;
	
	cellColors = @[
				   [UIColor greenColor],
				   [UIColor yellowColor],
				   [UIColor cyanColor],
				   [UIColor orangeColor],
				   [UIColor lightGrayColor],
				   ];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	
	NSInteger i = collectionView.tag;
	
	return items[i];

}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *identifier = @"Cell";
	
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
	
	NSInteger i = collectionView.tag;
	
	UILabel *lbl = [[UILabel alloc] initWithFrame:cell.bounds];
	lbl.numberOfLines = 0;
	lbl.textAlignment = NSTextAlignmentCenter;
	
	lbl.backgroundColor = [cellColors objectAtIndex:i];
	
	lbl.text = [NSString stringWithFormat:@"CollView %ld\nCell %ld", (long)i + 1, (long)indexPath.row + 1];
	
	[cell addSubview:lbl];
	
	return cell;

}


@end
