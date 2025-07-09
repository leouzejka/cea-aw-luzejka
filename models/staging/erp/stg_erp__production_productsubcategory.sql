with 

source as (

    select * from {{ source('erp', 'production_productsubcategory') }}

),

renamed as (

    select
          productsubcategoryid as id_subcategoria
        , productcategoryid as id_categoria
        , name as nome_subcategoria
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
