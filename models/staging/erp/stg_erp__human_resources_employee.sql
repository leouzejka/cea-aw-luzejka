with 

source as (

    select * from {{ source('erp', 'human_resources_employee') }}

),

renamed as (

    select
          businessentityid as id_funcionario
        , jobtitle as titulo_funcionario
        , birthdate as data_nascimento
        , hiredate as data_contratacao
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
