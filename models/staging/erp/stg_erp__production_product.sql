with 

source as (

    select * from {{ source('erp', 'production_product') }}

),

renamed as (

    select
        productid as id_produto
        , name as nome_produto
        , productsubcategoryid as id_subcategoria
        , standardcost as custo_standard
        -- productnumber
        -- makeflag
        -- finishedgoodsflag
        -- color
        -- safetystocklevel
        -- reorderpoint
        -- listprice
        -- size
        -- sizeunitmeasurecode
        -- weightunitmeasurecode
        -- weight
        -- daystomanufacture
        -- productline
        -- class
        -- style
        -- productmodelid
        -- sellstartdate
        -- sellenddate
        -- discontinueddate
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
