with 

source as (

    select * from {{ source('erp', 'sales_salesreason') }}

),

renamed as (

    select
          cast(salesreasonid as int) as id_razao_pedido
        , cast(name as varchar) as nome_razao
        , cast(reasontype as varchar) as tipo_razao
        -- modifieddate

    from source

)

select * from renamed
