
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


select
c.ID as id,
c.XM as user_name,
c.KH as card_no,
d.DEPART_NAME as depart_name,
c.GW_EMPLOYEE_NAME as employee_name,
c.CREATE_TIME as create_time
from dobi.SPA_CRM_CUSTOMER  c
left join dobi.SYS_DEPARTMENT  d on c.SINGLE_DEPT_ID = d.DEPT_ID
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
