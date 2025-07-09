with 

source as (

    select * from {{ source('erp', 'sales_customer') }}

),

renamed as (

    select
          customerid as id_cliente
        , personid as id_pessoa
        , storeid as id_loja
        , territoryid as id_territorio
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
