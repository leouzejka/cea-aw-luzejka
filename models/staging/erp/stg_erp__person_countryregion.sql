with 

source as (

    select * from {{ source('erp', 'person_countryregion') }}

),

renamed as (

    select
          cast(countryregioncode as varchar) as codigo_pais
        , cast(name as varchar) as nome_pais
        -- modifieddate

    from source

)

select * from renamed
