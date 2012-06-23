class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :album_ownership_attributes

  has_many :album_ownerships
  has_many :albums, through: :album_ownerships, uniq: true

  accepts_nested_attributes_for :album_ownerships

  delegate :build, :create, prefix: true, to: 'album_ownerships'
end
