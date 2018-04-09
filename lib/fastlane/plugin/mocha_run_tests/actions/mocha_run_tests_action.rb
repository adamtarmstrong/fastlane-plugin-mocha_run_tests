require 'fastlane/action'
require_relative '../helper/mocha_run_tests_helper'

module Fastlane
  module Actions
    class MochaRunTestsAction < Action
      def self.run(params)
      	UI.header("MOCHA TESTS")
      	UI.important("Ensure Appium Server is running!")
      	system "mocha #{params[:mocha_js_file_name]}"
        UI.success("✅ - Mocha Tests Completed!")
      end

      def self.description
        "Run Mocha Tests from within fastlane"
      end

      def self.authors
        ["Adam T Armstrong"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Leverages mocha to run tests for both iOS and Android Applications from within fastlane"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
          	key: :mocha_js_file_name,
          	env_name: "TI_BUILD_APP_MOCHA_JS_FILE_NAME",
          	description: "Mocha .js file to use to test this app",
          	optional: false,
          	is_string: true
          )
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
