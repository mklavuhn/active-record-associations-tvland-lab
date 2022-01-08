class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.actors.collect do |t|
            firstname = t.first_name.to_s 
            lastname = t.last_name.to_s
            "#{firstname} #{lastname}"
        end
    end

end