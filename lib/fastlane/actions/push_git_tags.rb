module Fastlane
  module Actions
    class PushGitTagsAction < Action
      def self.run(params)
	command = [
 	  'git',
	  'push',
	  '--tags'
	]

	Actions.sh(command.join(' '))
	Helper.log.info 'Tags pushed to remote'.green
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Push local tags to the remote."
      end

      def self.available_options
	[	
        ]
      end

      def self.author
	'vittoriom'
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end