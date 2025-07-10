with 

source as (

    select * from {{ source('erp', 'production_productcategory') }}

),

renamed as (

    select
          cast(productcategoryid as int) as id_categoria
        , cast(name as varchar) as nome_categoria
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
