{{ config(
    schema = 'tokens_solana',
    alias = 'sol_transfers_2024_q1',
    tags = ['static'],
    partition_by = ['block_date'],
    materialized = 'table',
    file_format = 'delta'
) }}

{{ solana_sol_transfers_macro(
    "cast('2024-01-01' as timestamp)",
    "cast('2024-04-01' as timestamp)"
) }} 