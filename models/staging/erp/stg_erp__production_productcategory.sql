with 

source as (

    select * from {{ source('erp', 'production_productcategory') }}

),

renamed as (

    select
          productcategoryid as id_categoria
        , name as nome_categoria
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
