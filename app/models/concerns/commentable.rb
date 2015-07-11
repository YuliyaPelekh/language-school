module Commentable
  extend ActiveSupport::Concern

  included do
    has_many :comments, as: :commentable, dependent: :destroy
  end

  module ClassMethods
    def is_commentable?
      true
    end
  end
end
