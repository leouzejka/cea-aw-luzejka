with 
    fonte_cartao as (
        select *
        from {{ ref('stg_erp__sales_creditcard') }}
    )

select
          cast(id_cartao as int) as id_cartao
        , cast(tipo_cartao as varchar) as tipo_cartao

    from fonte_cartao