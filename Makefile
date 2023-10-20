# Name of the Docker Compose file (update this value if you're using a different name or path)
COMPOSE_FILE := docker-compose.yml

# Base command for Docker Compose
DC := docker-compose -f $(COMPOSE_FILE)

.PHONY: up down restart recreate

# Start the containers
up:
	$(DC) up -d

# Stop and remove the containers
down:
	$(DC) down

# Restart the containers
restart:
	$(DC) restart

# Recreate and start the containers
recreate:
	$(DC) up -d --force-recreate
