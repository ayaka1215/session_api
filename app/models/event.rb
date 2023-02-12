class Event < ApplicationRecord
  validates :title, presence: true, length: { maximum: 40 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :place, presence: true, length: { maximum: 40 }
  # TODO：画像アップロード機能実装後
  # validates :image, presence: true
  validate :date_cannot_be_in_the_past, on: :create
  validate :start_end_check

  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:expiration_date, "過去の日付は入力できません")
    end
  end

  def start_end_check
    if start_time > end_time
      errors.add(:end_time, "は開始時刻より遅い時間を選択してください")
    end
  end
end
