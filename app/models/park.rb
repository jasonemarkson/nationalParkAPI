class Park < ApplicationRecord
    has_many :images

    def park_images=(params)
        params.each do |image|
            img = Image.new(image)
            self.images.push(img)
        end
    end
end
