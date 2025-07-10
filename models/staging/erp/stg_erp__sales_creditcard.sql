with 

source as (

    select * from {{ source('erp', 'sales_creditcard') }}

),

renamed as (

    select
          cast(creditcardid as int) as id_cartao
        , cast(cardtype as varchar) as tipo_cartao
        -- cardnumber
        -- expmonth
        -- expyear
        -- modifieddate

    from source

)

select * from renamed
