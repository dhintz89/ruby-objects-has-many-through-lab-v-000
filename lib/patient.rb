class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(date, doctor, self)
  end
  
  def appointments
    Appointments.all.select {|appt| appt.patient == self}
  end
  
  def doctors
    self.appointments.collect {|appt| appt.doctor}
  end
  
end