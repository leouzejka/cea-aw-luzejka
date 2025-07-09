with 

source as (

    select * from {{ source('erp', 'person_address') }}

),

renamed as (

    select
          addressid as id_endereco
        , city as cidade
        , stateprovinceid as id_estado
        -- addressline1
        -- addressline2
        -- postalcode
        -- spatiallocation
        -- rowguid
        -- modifieddat

    from source

)

select * from renamed
