class SoundcloudUser < ApplicationRecord
  serialize :user_hash

  def data
    OpenStruct.new(self.user_hash)
  end

  def data=(hash)
    hash.each do |k,v|
      self.user_hash[k] = v
    end
  end
end
