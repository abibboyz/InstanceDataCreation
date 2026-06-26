from django.test import TestCase
from core.models import User, Student

class BasicModelTests(TestCase):
    def test_user_creation(self):
        user = User.objects.create(name='Test User', email='test@example.com')
        self.assertEqual(user.name, 'Test User')
        self.assertEqual(user.email, 'test@example.com')

class ViewTests(TestCase):
    def test_index_view(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertContains(response, 'D3.js is Easy to Use')
