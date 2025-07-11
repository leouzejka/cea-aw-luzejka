with 

source as (

    select * from {{ source('erp', 'production_product') }}

),

renamed as (

    select
          cast(productid as int) as id_produto
        , cast(name as varchar) as nome_produto
        , cast(productsubcategoryid as int) as id_subcategoria
        , cast(standardcost as numeric(18,2)) as custo_padrao
        , cast(listprice as numeric(18,2)) as preco_lista
        , cast(discontinueddate as date) as data_descontinuado
        -- productnumber
        -- makeflag
        -- finishedgoodsflag
        -- color
        -- safetystocklevel
        -- reorderpoint
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
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
