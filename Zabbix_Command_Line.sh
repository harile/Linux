systemctl start zabbix-server
systemctl stop zabbix-server

systemctl status zabbix-server


zabbix_server -V #Show version 

zabbix_server -h #Show Help

zabbix_server -c /etc/zabbix/zabbix_server.conf

zabbix_server -R #Reload config
zabbix_server -R log_level_increase  # Tăng hoặc giảm mức đọ truy xuất log
zabbix_server -R log_level_decrease

zabbix_server -R  diaginfo=historycache
zabbix_server -R  diaginfo=valuecache
zabbix_server -R  diaginfo=lld
zabbix_server -R  diaginfo=alerting


# Zabiix get command 

zabbix_get -V