class Park < ApplicationRecord
    has_many :images
    has_many :savedparks
    has_many :users, through: :savedparks

    def park_images=(params)
        params.each do |image|
            img = Image.new(image)
            self.images.push(img)
        end
    end
end
