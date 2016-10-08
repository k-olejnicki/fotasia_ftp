class Foto < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "400x300" },
                    :storage => :ftp,
                    # Set where to store the file on the FTP server(s).
                    # This supports Paperclip::Interpolations.
                    :path => "/public_html/:attachment/:id/:style/:filename",

                    # The full URL of where the attachment is publicly accessible.
                    # This supports Paperclip::Interpolations.
                    :url => "http://fotasia.16mb.com/:attachment/:id/:style/:filename",

                    # The list of FTP servers to use
                    :ftp_servers => [
                        {
                            :host     => ENV["HOST"],
                            :user     => ENV["USER"],
                            :password => ENV["PASSWORD"],
                            :port => 21,
                            :passive  => true
                        }]
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
