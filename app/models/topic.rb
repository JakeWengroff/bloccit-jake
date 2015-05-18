class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :name, length: { minimum: 5 }, presence: true

  # self.per_page = 50


  def publicly_viewable
    scope :public, -> { where(public: true) }
  end

  def privately_viewable
    scope :private, -> { where(publicly_viewable: false) }
  end

  scope :visible_to, -> (user) { user ? all : public }


end






