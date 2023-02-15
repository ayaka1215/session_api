class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :title, presence: true, length: { maximum: 40 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :place, presence: true, length: { maximum: 40 }
  validate :date_cannot_be_in_the_past, on: :create
  validate :start_end_check

  def date_cannot_be_in_the_past
    errors.add(:expiration_date, "過去の日付は入力できません") if date.present? && date < Date.today
  end

  def start_end_check
    errors.add(:end_time, "は開始時刻より遅い時間を選択してください") if start_time > end_time
  end
end
