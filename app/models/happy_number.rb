class HappyNumber < ApplicationRecord
    def transform_data
     attributes.slice('number', 'result')
    end
end
