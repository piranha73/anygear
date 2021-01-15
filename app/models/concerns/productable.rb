module Reviewable
  extend ActiveSupport::Concern

  included do
    has_many :reviews, :as => :reviewable
  end
end
