
[![Build Status](https://img.shields.io/travis/GabrielMassana/CocoaPods-Search/dev.svg?style=flat-square)](https://travis-ci.org/GabrielMassana/CocoaPods-Search)

# Requirements v1.0.0

- The user will be able to search by author
- The user will be able to search by pod name
- There will be a search text field on top of the Table View
- There will be a clean content button for the search text field
- User will be able to switch search target (autor / pod name) inside the search text field
- Data will be displayed on a Table View
- Data will be stored in Core Data
- Data will be fetched through an FRC
- Search API calls will be done when the user clicks on Keyboard's Search button
- Table View with Master-Detail arch
- If there are no data, the Table View will display an empty view with Cocoapods Information
- From pod name Details the user will be able to navigate to User Details
- A new Search will cancel a previous one
- App will use NSURLSession
- App will use NSOperations mainly for Parsers
- Every search will purge old data from Core Data before Parsing the new data
- Web view will show a loading view
- The loading view will be on top of the Table View, but not over the search text field. Allowing a new search.
- Details views will allow to open URLs. e.g. GitHub project.
- A NavBar will be on top of the search text field
- Status bar will be visible
- App will only allow portrait mode
- App will use CocoaPods web colors
- App will use CocoaPods web fonts
- App will use CocoaPods icons when possible


# CocoaPods-Search Website

http://blog.cocoapods.org/search-engine/
https://github.com/CocoaPods/search.cocoapods.org/blob/eeb25b8aad023936f0db9f19a73ce0ac4985d012/lib/search.rb#L70-L78

#### e.g.

http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=summary:afnetworking
http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=author:gabriel%20author:massana
http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=name:CoreNet
http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=platform:ios
http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=version:10.0.0
http://search.cocoapods.org/api/v1/pods.flat.hash.json?query=dependencies:afnetworking
