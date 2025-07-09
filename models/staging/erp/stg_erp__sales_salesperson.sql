with 

source as (

    select * from {{ source('erp', 'sales_salesperson') }}

),

renamed as (

    select
        businessentityid as id_vendedor
        , territoryid as id_territorio
        -- salesquota
        -- bonus
        -- commissionpct,
        -- salesytd,
        -- saleslastyear,
        -- rowguid,
        -- modifieddate

    from source

)

select * from renamed
