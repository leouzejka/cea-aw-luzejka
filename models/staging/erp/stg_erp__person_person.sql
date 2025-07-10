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
          cast(businessentityid as int) as id_entidade --tem ligação com outras tabelas
        , cast(persontype as varchar) as tipo_pessoa
        , cast((firstname || ' ' || lastname) as varchar) as nome_completo
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
