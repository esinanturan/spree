module Spree
  module Admin
    module TagsHelper
      def tags_scope
        @tags_scope ||= ActsAsTaggableOn::Tag.for_context(:tags)
      end

      def tags_json_array
        @tags_json_array ||= tags_scope.pluck(:id, :name).map { |id, name| { id: id, name: name } }.as_json
      end

      def post_tags_scope
        @post_tags_scope ||= ActsAsTaggableOn::Tag.
                             joins(:taggings).
                             where('taggings.taggable_type = ?', 'Spree::Post').
                             for_context(:tags)
      end

      def post_tags_json_array
        @post_tags_json_array ||= post_tags_scope.pluck(:id, :name).map { |id, name| { id: id, name: name } }.as_json
      end
    end
  end
end
