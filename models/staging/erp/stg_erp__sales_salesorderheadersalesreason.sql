with 

source as (

    select * from {{ source('erp', 'sales_salesorderheadersalesreason') }}

),

renamed as (

    select
          salesorderid as id_pedido
        , salesreasonid as id_razao_pedido
        --modifieddate

    from source

)

select * from renamed
