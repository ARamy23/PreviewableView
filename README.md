<p align="center"><img src="https://user-images.githubusercontent.com/31904352/150622087-446b0968-c771-4d71-8756-db252595c8cf.svg" width="240"></a></p>

# About PreviewableView
> Previewable is a **_Utility_** reusable View class that allows for previewing the UI when building for iOS to show in different features

# Requirements
- iOS 15.0
- Swift 5+

# Demo

<table>
  <tr>
    <td>Light & Dark Modes</td>
     <td>No Notch, Small iPhones, and iPads </td>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/31904352/150619922-dd6eb4df-003e-488b-9f21-40f6370292ee.png"></td>
    <td><img src="https://user-images.githubusercontent.com/31904352/150619930-347ea173-4bfd-472d-a697-288bb4703b18.png"></td>
  </tr>
 </table>


## Dependencies
- Currently, no dependencies are needed in this project

## Installation
### Swift Package Manager (SPM)
- [Documentation](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app)

## How to use
```swift
struct PrayersView_Previews: PreviewProvider {
  static var previews: some View {
    PreviewableView( // 2
      [
        .darkMode,
        .noNotch,
        .iPad
      ]
    ) {
    // 1
      PrayersView(
        store: .init(
          initialState: .init(),
          reducer: prayerReducer,
          environment: PrayerEnvironment()
        )
      )
    }
  }
}
```
In your Preview Views
1. Wrap your preview View in `PreviwableView(_ features: [PreviewableFeatures]) { /*...*/ } `
2. Specify which features you need, (⚠️ if you've too many features, it will slow down the Preview greatly, make sure you optimize this on Intel macs ⚠️)


## Known Issues
1. There is a localization feature, however, for some unknown reason, it's not working for me even after following Apple's Documentation [here](https://developer.apple.com/documentation/xcode/previewing-localizations)

## Request
1. This is my first actual Open-Source, before it was just some try outs, I'd really love any feedback, especially negative ones to improve upon this skill, if you think something can be improved, please do reach out 🙏

## Contributions
You know the drill, Fork, Make your edits, and open a PR if you want
