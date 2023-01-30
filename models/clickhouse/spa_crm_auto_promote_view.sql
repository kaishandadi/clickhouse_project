
-- Use the `ref` function to select from other models

select *
from {{ ref('spa_crm_auto_promote') }}

