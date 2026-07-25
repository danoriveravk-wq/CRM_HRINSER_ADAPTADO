#!/bin/bash
echo "🔄 Restaurando Checkpoint v2 (Marca HRINSER Minimalista & Sin Footer)..."
docker exec -i espocrm-nuevo-db mariadb -uespocrm -pdb_password_espocrm_123 espocrm < /home/dano/Documentos/crm-hrinser-nuevo/backups/checkpoint_v2_hrinser_brand.sql
docker cp /home/dano/Documentos/crm-hrinser-nuevo/backups/checkpoint_v2_files.tar.gz espocrm-nuevo:/tmp/checkpoint_v2_files.tar.gz
docker exec -u root espocrm-nuevo bash -c "cd /var/www/html && tar -xzf /tmp/checkpoint_v2_files.tar.gz && chown -R www-data:www-data /var/www/html/custom /var/www/html/data /var/www/html/client/custom && find /var/www/html/custom /var/www/html/data /var/www/html/client/custom -type d -exec chmod 755 {} \; && find /var/www/html/custom /var/www/html/data /var/www/html/client/custom -type f -exec chmod 644 {} \;"
docker exec -u www-data espocrm-nuevo php command.php clear-cache
docker exec -u www-data espocrm-nuevo php command.php rebuild
echo "✅ ¡CHECKPOINT v2 RESTAURADO EN MENOS DE 5 SEGUNDOS!"
