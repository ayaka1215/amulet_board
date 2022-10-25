class Word < ApplicationRecord
    # user.idのバリデーション不要
    belongs_to :user
end
