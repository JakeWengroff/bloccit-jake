class Post < ActiveRecord::Base

  # scope :ordered_by_title, -> { order(:title, :asc) }
  # scope :ordered_by_reverse_created_at, -> { order(:created_at, :desc) }

  def self.ordered_by_title
    order('title asc')
  end

  def self.ordered_by_reverse_created_at
    order('created_at desc')
  end


  has_many :comments
  belongs_to :user
  belongs_to :topic
  has_one :summary

  # default_scope { order('created_at DESC') }

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true


end
  