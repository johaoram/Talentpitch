/* Retos creados en los últimos 3 meses */

use challenge;

SELECT * FROM challenge.challengesdetails
WHERE status = 'published'
AND created_at >= CURDATE() - INTERVAL 3 MONTH
ORDER BY created_at DESC;

