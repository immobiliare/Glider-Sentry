<p align="center">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./Documentation/assets/glider-sentry-dark.png" width="350">
  <img alt="logo-library" src="./Documentation/assets/glider-sentry-light.png" width="350">
</picture>
</p>

[![Swift](https://img.shields.io/badge/Swift-5.1_5.3_5.4_5.5_5.6_5.7-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.1_5.3_5.4_5.5_5.6_5.7-Orange?style=flat-square)
[![Platform](https://img.shields.io/badge/Platforms-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS%20%7C%20Linux-4E4E4E.svg?colorA=28a745)](#installation)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/GliderSentry.svg?style=flat-square)](https://img.shields.io/cocoapods/v/GliderLogger.svg)

# Glider

**Glider is the logger for just about everything!**

It's designed to be:
- **SIMPLE**: with a modular & extensible architecture, fully documented
- **PERFORMANT**: you can use Glider without the worry of impacting your app performances
- **UNIVERSAL**: it supports 14+ transports to satisfy every need; you can create your transport too!

See the [project's page on GitHub for more informations](https://github.com/immobiliare/Glider).

# Glider-Sentry

Glider-Sentry is a third party package to connect your Sentry iOS SDK as transport for Glider Logging.  
It uses the official [`sentry-cocoa`](https://github.com/getsentry/sentry-cocoa) library as backend and it's maintained by the core team of Glider.

# How it works

Once you have integrated Glider in your project you can install this dependency.  
It exposes a new transport called `GliderSentryTransport`; it's used to forward log messages coming from `Glider` logging system to the [Sentry](https://github.com/getsentry/sentry-cocoa) SDK.  
When you install this package, `sentry-cocoa` is a dependency.

```swift
let sentryTransport = GliderSentryTransport {
    // If you have not initialized the Sentry SDK yet you can pass a valid
    // `sdkConfiguration` here and the lib will do it for you.
    $0.sdkConfiguration = { ... }
    $0.environment = "MyApp-Production" // set the sentry environment
}

let logger = Log {
    $0.level = .info
    $0.transports = [sentryTransport]
    $0.extra = [...] // extras are sent automatically as sentry's extras
    $0.tags = [...] // tags are sent automatically as sentry's tags
}
```

# Install

This package require the Core Library of Glider you [can found here](https://github.com/immobiliare/Glider).  
Package is distributed both as CocoaPods dependency and SPM dependency.

## Swift Package Manager

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler. It is in early development, but Glider does support its use on supported platforms.

Once you have your Swift package set up, adding Glider as a dependency is as easy as adding it to the dependencies value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/immobiliare/Glider-Sentry")
]
```

Manifest also includes third-party packages for other transports, like ELK or Sentry.  
The Glider core SDK is the `Glider` package.

## CocoaPods

CocoaPods is a dependency manager for Cocoa projects.  
To integrate Glider into your project, specify it in your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

pod 'GliderSentry'
```

## Requirements

Minimum requirements are:
- Swift 5.1
- iOS 11+, macOS 10.14+, tvOS 12.0+
- Sentry SDK 7+