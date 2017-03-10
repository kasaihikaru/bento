class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nickname, presence: true

  has_many :sentences
  has_many :likes
  has_many :folds

  has_attached_file :avatar,
                    :styles  => {original: "100x100#"},
                    :storage => :s3,
                    :s3_region => ENV['AWS_REGION'],
                    :s3_credentials => {
                      :bucket => ENV['S3_BUCKET_NAME'],
                      :s3_host_name => ENV["AWS_S3_HOST_NAME"],
                      access_key_id: ENV['ACCESS_KEY_ID'],
                      secret_access_key: ENV['SECRET_ACCESS_KEY']
                      },
                    :path => ":class/:attachment/:id/:style.:extension"

  validates_attachment_content_type :avatar,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

  def authenticated_image_url(style)
    image.s3_object(style).url_for(:read, :secure => true)
  end

  def sentence_like(sentence_id)
    current_user.likes.where(sentence_id: sentence_id).select(:id)
  end

end
