{% macro add_trim(col_name)%}

TRIM({{col_name}}) AS trimmed_{{col_name}}

{% endmacro %}