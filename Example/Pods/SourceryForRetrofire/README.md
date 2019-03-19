[![Version](https://img.shields.io/cocoapods/v/SourceryForRetrofire.svg?style=flat)](http://cocoapods.org/pods/SourceryForRetrofire)
[![License](https://img.shields.io/cocoapods/l/SourceryForRetrofire.svg?style=flat)](http://cocoapods.org/pods/SourceryForRetrofire)
[![Platform](https://img.shields.io/cocoapods/p/SourceryForRetrofire.svg?style=flat)](http://cocoapods.org/pods/SourceryForRetrofire)


**SourceryForRetrofire** is a tool used to provide annotations similar to Java/Kotlin and is just a modified version of [Sourcery](https://github.com/krzysztofzablocki/Sourcery) from Krzysztof Zabłocki. Even if this library can be used on its own, this usage is HEAVILY DISCOURAGED! Use the official Sourcery if you need to generate some boilerplate! This library has been created with the only purpose of creating [RetrofireSwift](https://github.com/dcoletto/RetrofireSwift), a type-safe HTTP client for Swift, inspired by [Retrofit](https://square.github.io/retrofit/).

## Installation

Right now the only official way to install this library is by using CocoaPods; you can of course build the binary on your own or download the prebuilt one from GitHub (which should always be aligned) but I won't be able to help you in case of any issue.

- _[CocoaPods](https://cocoapods.org)_

    Add `pod 'SourceryForRetrofire'` to your `Podfile` and run `pod update SourceryForRetrofire`. This will download the latest release binary and will put it in your project's CocoaPods path so you will run it with `$PODS_ROOT/SourceryForRetrofire/bin/sourcery`

## Documentation

Since this project uses Sourcery plus a couple of lines you can refer to the official Sourcery documentation [here](https://cdn.rawgit.com/krzysztofzablocki/Sourcery/master/docs/index.html).

## Usage

Usage is the same of sourcery, so you can refer to its docs;

```
$ $PODS_ROOT/SourceryForRetrofire/sourcery --sources <sources path> --templates <templates path> --output <output path>
```

## Build

Note for the future me: 
- Download the project
- Edit whatever you need to edit
- Set the version in the Xcode project and in the SourceryForRetrofire.podspec file
- Run `rake release:new_sfr` and enjoy

## License

SourceryForRetrofire is available under the MIT license. See [LICENSE](LICENSE) for more information.

## Attributions

This tool is powered by

- [SourceKitten](https://github.com/jpsim/SourceKitten) by [JP Simard](https://github.com/jpsim)
- [Stencil](https://github.com/kylef/Stencil) and few other libs by [Kyle Fuller](https://github.com/kylef)
- [Sourcery](https://github.com/krzysztofzablocki/Sourcery) by [Krzysztof Zabłocki](https://github.com/krzysztofzablocki)