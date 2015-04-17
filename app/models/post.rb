class Post < ActiveRecord::Base
<<<<<<< HEAD
=======
  # scope :ordered_by_title, -> { order(:title, :asc) }
  # scope :ordered_by_reverse_created_at, -> { order(:created_at, :desc) }

>>>>>>> 29b76068439ba5d72c046e55aba4a90effd15514
  def self.ordered_by_title
    order('title asc')
  end

  def self.ordered_by_reverse_created_at
    order('created_at desc')
  end

<<<<<<< HEAD
=======

>>>>>>> 29b76068439ba5d72c046e55aba4a90effd15514
  has_many :comments
  belongs_to :user

  # default_scope { order('created_at DESC') }
end
  