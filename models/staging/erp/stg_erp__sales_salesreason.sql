with 

source as (

    select * from {{ source('erp', 'sales_salesreason') }}

),

renamed as (

    select
          cast(salesreasonid as int) as id_motivo_pedido
        , cast(name as varchar) as nome_motivo
        , cast(reasontype as varchar) as tipo_motivo
        -- modifieddate

    from source

)

select * from renamed
