with  RAW_REVIEWS AS(
select * from {{ source('airbnb', 'reviews') }}
)

SELECT
 listing_id,
 date AS review_date,
 reviewer_name,
 comments AS review_text,
 sentiment AS review_sentiment
FROM
 raw_reviews