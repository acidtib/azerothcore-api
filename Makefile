run:
	foreman start -f Procfile.dev

swagger: rswag swaggerize

rswag:
	RAILS_ENV=test rails rswag

swaggerize:
	rake rswag:specs:swaggerize