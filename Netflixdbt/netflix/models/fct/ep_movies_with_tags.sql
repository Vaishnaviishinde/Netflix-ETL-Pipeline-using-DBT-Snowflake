with fct_movies_w_tags as (
    SELECT * from {{ref('dim_movies_with_tags')}}
)

select * from fct_movies_w_tags