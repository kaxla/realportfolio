class Project < ActiveRecord::Base
  has_attached_file :project_image,
                    :storage => :s3,
                    :s3_protocol => "https",
                    :s3_host_alias => "s3-us-west-2.amazonaws.com",
                    :path => "/image/:id/:filename",
                    :bucket => ENV['S3_BUCKET'],
                    :s3_credentials => {
                      :access_key_id => ENV['S3_ACCESS_KEY_ID'],
                      :secret_access_key => ENV['S3_SECRET_ACCESS_KEY'],
                    }
  validates_attachment_file_name :project_image, :matches => [/png\Z/, /jpe?g\Z/]
end
# correct:
# https://s3-us-west-2.amazonaws.com/kaylamorrisonportfolio/image/6/enhanced-buzz-511-1296591390-30.jpg
#displaying:
# http://s3.amazonaws.com/kaylamorrisonportfolio/image/3/enhanced-buzz-517-1296592131-31.jpg?1399170852
