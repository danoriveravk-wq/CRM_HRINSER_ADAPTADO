#!/bin/bash
echo "🔄 Restaurando Checkpoint v7 (Kanban DnD + Teams + Menús Desplegables)..."
docker exec -i espocrm-nuevo-db mariadb -uespocrm -pdb_password_espocrm_123 espocrm < /home/dano/Documentos/crm-hrinser-nuevo/backups/checkpoint_v7_kanban_dnd.sql
docker cp /home/dano/Documentos/crm-hrinser-nuevo/backups/checkpoint_v7_files.tar.gz espocrm-nuevo:/tmp/checkpoint_v7_files.tar.gz
docker exec -u root espocrm-nuevo bash -c "cd /var/www/html && tar -xzf /tmp/checkpoint_v7_files.tar.gz && chown -R www-data:www-data /var/www/html/custom /var/www/html/data /var/www/html/client/custom"
docker exec -u www-data espocrm-nuevo php command.php clear-cache
docker exec -u www-data espocrm-nuevo php command.php rebuild
echo "✅ ¡CHECKPOINT v7 RESTAURADO!"
