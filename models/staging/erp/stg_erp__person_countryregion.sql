with 

source as (

    select * from {{ source('erp', 'person_countryregion') }}

),

renamed as (

    select
          countryregioncode as codigo_pais
        , name as nome_pais
        -- modifieddate

    from source

)

select * from renamed
