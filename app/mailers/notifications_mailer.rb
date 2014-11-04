class NotificationsMailer < ActionMailer::Base
  default :from => "info@kosmyka.com"

  def nuevo_socio(socio)
    @socio = socio
    mail(:to => "gramirez@corpperusur.com", :reply_to => socio.email, :subject => "Mensaje de #{socio.nombre} #{socio.apellido_paterno}")
  end
end
