with 

source as (

    select * from {{ source('erp', 'person_stateprovince') }}

),

renamed as (

    select
          cast(stateprovinceid as int) as id_estado
        , cast(territoryid as int) as id_territorio
        , cast(stateprovincecode as varchar) as codigo_estado
        , cast(countryregioncode as varchar) as codigo_pais
        , cast(name as varchar) nome_estado
        
        -- isonlystateprovinceflag
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
