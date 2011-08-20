module Deployinator
  module Stacks
    module Demo1
      def demo1_production_version
        # %x{curl http://my-app.com/version.txt}
        "cf44aab-20110729-230910-UTC"
      end

      def demo1_head_build
        # the build version you're about to push
        # %x{git ls-remote #{your_git_repo_url} HEAD | cut -c1-7}.chomp
        "11666e3"
      end

      def demo1_production(options={})
        log_and_stream "Fill in the demo1_production method in stacks/demo1.rb!<br>"

        # log the deploy
        log_and_shout :old_build => environments[0][:current_build].call, :build => environments[0][:next_build].call
      end
    end
  end
end
