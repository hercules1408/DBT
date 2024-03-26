{% macro learn_variables() %}

 {% set your_name = "Hercules"  %}
#jinja Variable#
 {{ log("Hello " ~ your_name,info=True)  }}

  {{ log("Hello dbt user " ~ var("user_name","No username is passed !!") ~ "!",info=True)  }}
#dbt variable #

{% endmacro %}