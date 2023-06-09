SELECT
 *
FROM
 {{ ref('dim_listings_cleans') }}
WHERE minimum_nights < 1
LIMIT 10