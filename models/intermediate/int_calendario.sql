with 
    calendario as (
        {{ dbt_date.get_date_dimension("2011-05-30", "2014-08-01") }}
    )

    select 
          cast(TO_VARCHAR(cast(date_day as date), 'YYYYMMDD') as int) as data_pk
        , cast(date_day as date) as data_completa
        , cast(day_of_month as int) as dia_do_mes
        , cast(month_of_year as int) as numero_mes        
        , cast(year_number as int) as ano
        , cast(day_of_week as int) as numero_dia_semana
        , cast(quarter_of_year as int) as trimestre_do_ano
        , cast(
            case month_of_year
                when 1 then 'Janeiro'
                when 2 then 'Fevereiro'
                when 3 then 'Março'
                when 4 then 'Abril'
                when 5 then 'Maio'
                when 6 then 'Junho'
                when 7 then 'Julho'
                when 8 then 'Agosto'
                when 9 then 'Setembro'
                when 10 then 'Outubro'
                when 11 then 'Novembro'
                else 'Dezembro'
            end 
            as varchar) as nome_mes
        
        , cast(
            case day_of_week
                when 1 then 'Segunda-feira'
                when 2 then 'Terça-feira'
                when 3 then 'Quarta-feira'
                when 4 then 'Quinta-feira'
                when 5 then 'Sexta-feira'
                when 6 then 'Sábado'
                else 'Domingo'
            end
            as varchar) as nome_dia_semana

    from calendario