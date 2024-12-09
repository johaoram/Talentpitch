/* TOP */

use challenge;
SELECT 
    u.id AS user_id,
    u.name,
    u.email,
    SUM(p.views) AS total_views
FROM 
    users u
JOIN 
    profiles p ON u.id = p.user_id
GROUP BY 
    u.id, u.name, u.email
ORDER BY 
    total_views DESC
LIMIT 3; 