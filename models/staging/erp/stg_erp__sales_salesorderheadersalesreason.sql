with 

source as (

    select * from {{ source('erp', 'sales_salesorderheadersalesreason') }}

),

renamed as (

    select
          cast(salesorderid as int) as id_pedido
        , cast(salesreasonid as int) as id_motivo_pedido
        --modifieddate

    from source

)

select * from renamed
