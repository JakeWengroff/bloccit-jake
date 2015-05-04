class Post < ActiveRecord::Base

  # scope :ordered_by_title, -> { order(:title, :asc) }
  # scope :ordered_by_reverse_created_at, -> { order(:created_at, :desc) }

  def self.ordered_by_title
    order('title asc')
  end

  def self.ordered_by_reverse_created_at
    order('created_at desc')
  end



  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :topic
  has_one :summary

  mount_uploader :avatar, AvatarUploader

  self.per_page = 100

  # default_scope { order('created_at DESC') }

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  def markdown_title
    render_as_markdown(self.title)
  end

  def markdown_body
    render_as_markdown(self.body)
  end

  private
  
  def render_as_markdown(markdown)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render markdown).html_safe
  end

  

end
  