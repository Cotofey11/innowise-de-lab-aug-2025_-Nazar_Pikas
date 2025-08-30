"""
Дано: email = " USER@DOMAIN.COM "
 1. Очистить и отформатировать до вида: "user@domain.com"
 2. Разделить на имя пользователя и домен
 3. Используя f-строку, создать: "Username: user, Domain: domain.com"
"""
user_email: str = " USER@DOMAIN.COM "
formated_user_email: str = user_email.lower().strip()
print(f"Formated string: {formated_user_email}")
#Честно, не знаю как правильно типизировать переменные когда они идут через
#запятую, поэтому оставил так.
user_name, user_domain= formated_user_email.split('@')
print(f"Username: {user_name}, Domain: {user_domain}")
