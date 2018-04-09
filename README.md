# fastlane-plugin:  mocha_run_tests

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-ti_build_app)
[!["Titanium"](http://www-static.appcelerator.com/badges/titanium-git-badge-sq.png)](http://www.appcelerator.com/titanium/)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `mocha_run_tests`, add it to your project by running:
```bash
fastlane add_plugin mocha_run_tests
```

## About ti_build_app

Run Mocha Tests from within fastlane

This plugin provides the functionality to run mocha tests from within fastlane.

### Dependencies
* Appium Server
  > For most use-cases, the Appium Desktop GUI App, running "Simple Server", is sufficient. [repo here](https://github.com/appium/appium-desktop)
* Mocha NPM Package
  > [package](https://www.npmjs.com/package/mocha)
  
### To Do
- [ ] Automate Startup of Appium Server.  
\* Current version requires you already have Appium Server started prior to executing fastlane\*

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

```
lane :test do
  mocha_run_tests(
    mocha_js_file_name: '/Users/adamarmstrong/Appium_Tests/custom_app_mocha_test_filename.js'
  )
end
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
