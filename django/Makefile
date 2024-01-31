default:
	docker compose up -d
down:
	docker compose down
	docker system prune -a
i:
	sh sh/init.sh
a-%:
	sh sh/app.sh ${@:p-%=%}
r:
	sh sh/run.sh