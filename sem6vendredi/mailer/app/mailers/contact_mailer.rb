class ContactMailer < ApplicationMailer


def contact(user)

	@user = user

mail(to: 'vivien.richaud@gmail.com', subject: 'Sujet de test')


end



end
