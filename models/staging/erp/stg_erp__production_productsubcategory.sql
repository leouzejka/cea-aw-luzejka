with 

source as (

    select * from {{ source('erp', 'production_productsubcategory') }}

),

renamed as (

    select
          cast(productsubcategoryid as int) as id_subcategoria
        , cast(productcategoryid as int) as id_categoria
        , cast(name as varchar) as nome_subcategoria
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
