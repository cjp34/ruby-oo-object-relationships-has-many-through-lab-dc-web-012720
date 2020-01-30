require 'pry'

class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments 
        Appointment.all.select do |x|
            x.patient == self
        end
    end 

    def doctors
        Appointment.all.select do |x|
            x.patient == self
        end.collect do |y|
            y.doctor
        end
    end

end
