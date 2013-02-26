module Refinery
  module Videos
    class VideoPage < Refinery::Core::BaseModel

      belongs_to :video
      belongs_to :page, :polymorphic => true, :class_name => "::Refinery::Page"

      #translates :caption if self.respond_to?(:translates)

      attr_accessible :video_id, :position, :locale
      #self.translation_class.send :attr_accessible, :locale

    end
  end
end
