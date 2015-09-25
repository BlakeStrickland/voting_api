class AddToken < ActiveRecord::Migration
  def change
    add_column :voters, :access_token, :string

    Voter.all.each do |v|
      v.update!(access_token: SecureRandom.hex) if access_token.blank?
    end
  end
end
