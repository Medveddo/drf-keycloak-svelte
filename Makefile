front:
	bash -c "cd frontend && npm run dev"

back:
	bash -c "cd backend && source venv/bin/activate && python manage.py runserver"
