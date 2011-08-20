module Deployinator
  module Stacks
    module Demo2
      def demo2_production_version
        # %x{curl http://my-app.com/version.txt}
        "cf44aab-20110729-230910-UTC"
      end

      def demo2_head_build
        # the build version you're about to push
        # %x{git ls-remote #{your_git_repo_url} HEAD | cut -c1-7}.chomp
        "11666e3"
      end

      def demo2_production(options={})
        log_and_stream "Fill in the demo2_production method in stacks/demo2.rb!<br>"

        # log the deploy
        log_and_shout :old_build => environments[0][:current_build].call, :build => environments[0][:next_build].call
      end
    end
  end
end
