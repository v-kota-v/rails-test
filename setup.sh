#!/bin/bash
docker-compose build
docker-compose up -d
echo "起動確認"
docker-compose ps
echo "データベースを作成"
docker-compose exec web rails db:create
