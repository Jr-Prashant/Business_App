//
//  MapPin.h
//  Tab Bar Business Application
//
//  Created by MacBook Pro on 06/11/23.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject{
    
    CLLocationCoordinate2D coordinate;
    
}

@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end

NS_ASSUME_NONNULL_END
