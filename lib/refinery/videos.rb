require 'refinerycms-core'
require 'dragonfly'
require 'rack/cache'


module Refinery
  autoload :VideosGenerator, 'generators/refinery/videos_generator'

  module Videos
    require 'refinery/videos/engine'
    require 'refinery/videos/configuration'
    autoload :Dragonfly, 'refinery/videos/dragonfly'
    autoload :Validators, 'refinery/videos/validators'

    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end

      def attach!
        require 'refinery/page'
        require 'refinery/videos/page_videos'
        Refinery::Page.send :has_many_page_videos
        Refinery::Blog::Post.send :has_many_page_videos if defined?(::Refinery::Blog)
        #Refinery::Image.send :has_many, :image_pages, :dependent => :destroy
      end
    end

    require 'refinery/videos/engine'
  end
end

