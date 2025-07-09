with 

source as (

    select * from {{ source('erp', 'sales_creditcard') }}

),

renamed as (

    select
          creditcardid as id_cartao
        , cardtype as tipo_cartao
        -- cardnumber
        -- expmonth
        -- expyear
        -- modifieddate

    from source

)

select * from renamed
