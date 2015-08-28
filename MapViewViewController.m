//
//  MapViewViewController.m
//  RouteZ2
//
//  Created by Sarah Henrie on 8/3/15.
//  Copyright (c) 2015 Sarah Henrie. All rights reserved.
//

#import "MapViewViewController.h"
@import MapKit;
@import CoreLocation;

@interface MapViewViewController () <MKMapViewDelegate, CLLocationManagerDelegate>
@end


//house coordinates
//#define HOUSE_LATITUDE 40.229025;
//#define HOUSE_LONGITUDE -111.674799;

#define THE_SPAN 0.30f;
@implementation MapViewViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.mapView setDelegate:self];
    [self.mapView setShowsUserLocation:YES];
    
//create region
//    MKCoordinateRegion myRegion;
    
    //center
    CLLocationCoordinate2D center;
//    center.latitude = HOUSE_LATITUDE;
//    center.longitude = HOUSE_LONGITUDE;
    
//    //span
//    MKCoordinateSpan span;
//    span.latitudeDelta = THE_SPAN;
//    span.longitudeDelta = THE_SPAN;
//    
//    myRegion.center = center;
//    myRegion.span = span;
    
    //set our mapView
    
//    [_mapView setRegion:myRegion animated: YES];

}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    // zoom to region containing the user location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // add the annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"The Location";
    point.subtitle = @"Sub-title";
    [self.mapView addAnnotation:point];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)setMap:(id)sender {
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
    case 0:
        _mapView.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            _mapView.mapType = MKMapTypeHybrid;
            break;
            
        case 2:
            _mapView.mapType = MKMapTypeSatellite;
            break;
        default:
            break;
    }
}

@end
