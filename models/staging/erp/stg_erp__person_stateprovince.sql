with 

source as (

    select * from {{ source('erp', 'person_stateprovince') }}

),

renamed as (

    select
          stateprovinceid as id_estado
        , territoryid as id_territorio
        , stateprovincecode as codigo_estado
        , countryregioncode as codigo_pais
        , name as nome_estado
        
        -- isonlystateprovinceflag
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
