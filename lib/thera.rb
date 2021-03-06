require 'thera/appointment'
require 'thera/appointment_request'
require 'thera/user'
require 'thera/payment'
require 'thera/provider'

module Thera
  class Client
    attr_reader :appointment, :appointment_request, :user, :payment, :provider

    def initialize(token)
      @appointment         = Appointment.new(token)
      @appointment_request = AppointmentRequest.new(token)
      @user                = User.new(token)
      @payment             = Payment.new(token)
      @provider            = Provider.new(token)
    end
  end
end
