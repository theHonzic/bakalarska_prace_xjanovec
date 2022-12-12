//
//  MapSnapshotView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 02.11.2022.
//
// MARK: - https://codakuma.com/swiftui-static-maps/
// MARK: - https://codewithchris.com/swiftui/swiftui-apple-maps/
import SwiftUI
import MapKit

struct MapSnapshotView: View {
    let item: ContactExample
    var span: CLLocationDegrees = 0.01
    
    @State private var snapshotImage: UIImage? = nil
    
    var body: some View {
        Group {
            if let image = snapshotImage {
                VStack{
                    Image(uiImage: image)
                    Divider()
                    Button("Navigate"){
                        //open maps
                        let url = URL(string: "maps://?saddr=&daddr=\(item.address.coordinates.latitude),\(item.address.coordinates.longitude)")
                        
                        if UIApplication.shared.canOpenURL(url!) {
                              UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }
                }
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            generateSnapshot(width: 300, height: 300)
        }
        
        
    }
    
    func generateSnapshot(width: CGFloat, height: CGFloat) {
        
        // The region the map should display.
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: item.address.coordinates.latitude, longitude: item.address.coordinates.longitude),
            span: MKCoordinateSpan(
                latitudeDelta: self.span,
                longitudeDelta: self.span
            )
        )
        
        // Map options.
        let mapOptions = MKMapSnapshotter.Options()
        mapOptions.region = region
        mapOptions.size = CGSize(width: width, height: height)
        mapOptions.showsBuildings = true
        
        // Create the snapshotter and run it.
        let snapshotter = MKMapSnapshotter(options: mapOptions)
        snapshotter.start { (snapshotOrNil, errorOrNil) in
            if let error = errorOrNil {
                print(error)
                return
            }
            if let snapshot = snapshotOrNil {
                self.snapshotImage = snapshot.image
            }
        }
    }
    
}
