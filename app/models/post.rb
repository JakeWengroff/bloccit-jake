class Post < ActiveRecord::Base
  def self.ordered_by_title
    order('title asc')
  end

  def self.ordered_by_reverse_created_at
    order('created_at desc')
  end

  has_many :comments
  belongs_to :user

  # default_scope { order('created_at DESC') }
end
  