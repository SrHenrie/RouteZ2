//
//  MapViewViewController.h
//  RouteZ2
//
//  Created by Sarah Henrie on 8/3/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewViewController : UIViewController {
    MKMapView *mapView;
}
@property (strong, nonatomic) IBOutlet NSObject *mapDelegate;

@property (nonatomic, strong)IBOutlet MKMapView *mapView;

- (IBAction)setMap:(id)sender;



@end
