#!/bin/bash

group_id=$1
base_ip="$2"
start_ip=$3
end_ip=$4

pihole_db="/etc/pihole/gravity.db"

add_client() {
  local ip_address
  ip_address=$1

  sudo sqlite3 $pihole_db "INSERT OR IGNORE INTO client (ip, comment) VALUES ('$ip_address', '$ip_address');"
}

for i in $(seq "$start_ip" "$end_ip"); do
  ip_address="${base_ip}.${i}"
  echo "Adding IP: $ip_address to clients..."
  add_client "$ip_address"
done

echo "Still need to implement adding to group ID: $group_id"