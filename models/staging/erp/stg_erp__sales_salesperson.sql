with 

source as (

    select * from {{ source('erp', 'sales_salesperson') }}

),

renamed as (

    select
          cast(businessentityid as int) as id_vendedor
        , cast(territoryid as int) as id_territorio
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
