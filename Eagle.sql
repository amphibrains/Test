with large_source_table as(

selecr * from {{ref('large_source_table')}}
{%if is_incrementa()%}
    where session_start>dateadd(day, -3,current_date)
    {%endif%}


)