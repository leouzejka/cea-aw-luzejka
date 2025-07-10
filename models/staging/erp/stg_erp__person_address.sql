with 

source as (

    select * from {{ source('erp', 'person_address') }}

),

renamed as (

    select
          cast(addressid as int) as id_endereco
        , cast(city as varchar) as cidade
        , cast(stateprovinceid as int) as id_estado
        -- addressline1
        -- addressline2
        -- postalcode
        -- spatiallocation
        -- rowguid
        -- modifieddat

    from source

)

select * from renamed
