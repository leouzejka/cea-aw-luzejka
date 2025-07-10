with 

source as (

    select * from {{ source('erp', 'human_resources_employee') }}

),

renamed as (

    select
          cast(businessentityid as int) as id_funcionario
        , cast(jobtitle as varchar) as titulo_funcionario
        , cast(birthdate as date) as data_nascimento
        , cast(hiredate as date) as data_contratacao
         --nationalidnumber,
        --loginid,
        --maritalstatus,
        --gender,
        --salariedflag,
        --vacationhours,
        --sickleavehours,
        --currentflag,
        --rowguid,
        --modifieddate,
        --organizationnode

    from source

)

select * from renamed
