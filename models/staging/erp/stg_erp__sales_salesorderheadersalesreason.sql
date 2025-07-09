with 

source as (

    select * from {{ source('erp', 'sales_salesorderheadersalesreason') }}

),

renamed as (

    select
        salesorderid,
        salesreasonid,
        modifieddate

    from source

)

select * from renamed
