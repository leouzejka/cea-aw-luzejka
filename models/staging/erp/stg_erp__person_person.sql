--base de todos os individuos cadastrados
-- IN - individual
-- EM - (employee) fucionario
-- SP - (sales person) vendedor
-- SC - (store contact) contato de loja
-- VC - (vendor contact) contato de fornecedor
-- GC - (General contact) contato geral
with 

source as (

    select * from {{ source('erp', 'person_person') }}

),

renamed as (

    select
          businessentityid as id_pessoa --tem ligação com outras tabelas
        , persontype as tipo_pessoa
        , firstname || ' ' || lastname as nome_completo
        -- namestyle
        -- title
        -- firstname
        -- middlename
        -- lastname
        -- suffix
        -- emailpromotion
        -- additionalcontactinfo
        -- demographics
        -- rowguid
        -- modifieddate

    from source

)

select * from renamed
