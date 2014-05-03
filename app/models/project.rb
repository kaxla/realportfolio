class Project < ActiveRecord::Base
  has_attached_file :project_image,
                    storage: :s3,
                    s3_credentials: {
                      access_key_id: ENV['S3_ACCESS_KEY_ID'],
                      secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],
                      bucket: ENV['S3_BUCKET']
                    },
                    url: ":kaylamorrisonportfolio.s3-website-us-west-2.amazonaws.com"
  validates_attachment_file_name :project_image, :matches => [/png\Z/, /jpe?g\Z/]
end
