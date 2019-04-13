
User.where(email: 'admin@admin.com').first_or_create(password:'password', password_confirmation: 'password')

