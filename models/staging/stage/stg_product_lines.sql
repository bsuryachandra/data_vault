{%- set yaml_metadata -%}
source_model: 'base__product_lines'
derived_columns:
  RECORD_SOURCE: '!BASE__PRODUCT_LINES'
  LOAD_DATE: '_SYNC_DATE'
  EFFECTIVE_FROM: '_SYNC_DATE'
hashed_columns:
  PRODUCT_LINE_HK: 'PRODUCT_LINE'
  PRODUCT_LINE_HASHDIFF:
    is_hashdiff: true
    columns:
      - 'PRODUCT_LINE'
      - '_SYNC_DATE'
      - 'TEXT_DESCRIPTION'
      - 'HTML_DESCRIPTION'
      - 'IMAGE'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{% set source_model = metadata_dict['source_model'] %}

{% set derived_columns = metadata_dict['derived_columns'] %}

{% set hashed_columns = metadata_dict['hashed_columns'] %}

{{ automate_dv.stage(include_source_columns=true,
                     source_model=source_model,
                     derived_columns=derived_columns,
                     null_columns=none,
                     hashed_columns=hashed_columns,
                     ranked_columns=none) }}
