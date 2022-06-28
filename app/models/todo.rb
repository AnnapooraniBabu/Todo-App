class Todo < ApplicationRecord
    def get_data
        "#{task} #{date_task} #{status} #{create_at.to_date}"
    end
end
