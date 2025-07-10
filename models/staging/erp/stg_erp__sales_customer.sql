with 

source as (

    select * from {{ source('erp', 'sales_customer') }}

),

renamed as (

    select
          cast(customerid as int) as id_cliente
        , cast(personid as int) as id_pessoa
        , cast(storeid as int) as id_loja
        , cast(territoryid as int) as id_territorio
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
