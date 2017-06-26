class Profile < ApplicationRecord
  belongs_to :user
  # validates :birthday, presence: true
  # validates :sex, presence: true
  validates :zipcode, presence: true
  validates :address, presence: true
  validates :tel, presence: true, format: {with: /\A[0-9-]{,14}\z/}
  validate :add_error_sample
 
  def add_error_sample
    # 郵便番号が空のときにエラーメッセージを追加する
    if zipcode.blank?
      errors.add(:zipcode, "に関係するエラー")
      errors[:base] << "郵便番号は必ず入力して下さい"
    end
 
    #電話が空のときにエラーメッセージを追加する
    if tel.blank?
      errors[:base] << "電話番号は必ず入力して下さい"
    end
    # 住所
     if address.blank?
      errors[:base] << "住所は必ず入力して下さい"
    end
  end
 
end
