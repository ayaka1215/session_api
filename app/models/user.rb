# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  mount_uploader :image, ImageUploader
  has_many :user_part_relations, dependent: :delete_all
  has_many :parts. through: :user_part_relations
end
