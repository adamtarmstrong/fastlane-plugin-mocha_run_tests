describe Fastlane::Actions::MochaRunTestsAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The mocha_run_tests plugin is working!")

      Fastlane::Actions::MochaRunTestsAction.run(nil)
    end
  end
end
