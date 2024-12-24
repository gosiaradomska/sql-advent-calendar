SELECT g.guest_id, guest_name 
FROM guests g
LEFT JOIN guest_gifts gg
ON g.guest_id = gg.guest_id
WHERE gift_id IS NULL;
