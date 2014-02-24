Paperclip::Attachment.default_options.merge!({
    storage: :s3,
    s3_credentials: {
        access_key_id: ENV['S3_KEY'],
        secret_access_key: ENV['S3_SECRET'],
        bucket: "#{ENV['S3_BUCKET']}-#{Rails.env}"
        },
    url: ":s3_domain_url",
    path: "/:class/:attachment/:id_partition/:style/:filename"
    })