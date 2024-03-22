{% snapshot scd_raw_listings_check_strtgy %}
{{
config(
          target_schema='DBT_SSINGH',
          strategy='check',
          unique_key='id',
          check_cols='all'
        )
}}
select * FROM {{ source('airbnb', 'listings') }}
{% endsnapshot %}