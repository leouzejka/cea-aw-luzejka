with 

source as (

    select * from {{ source('erp', 'human_resources_employee') }}

),

renamed as (

    select
        businessentityid,
        nationalidnumber,
        loginid,
        jobtitle,
        birthdate,
        maritalstatus,
        gender,
        hiredate,
        salariedflag,
        vacationhours,
        sickleavehours,
        currentflag,
        rowguid,
        modifieddate,
        organizationnode

    from source

)

select * from renamed
