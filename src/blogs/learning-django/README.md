# Learning Django 🦕

## Django ORM

When creating a class inside the models, django will create a database table for
it. But if we put `class Meta: abstract = True`, then there will be no table for
that class, the class will be used as a base model and can be used else where.
