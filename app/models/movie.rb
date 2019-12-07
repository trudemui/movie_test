class Movie < ApplicationRecord
    mount_uploader :video, VideoUploader
end
