view: outreach_accounts {
  sql_table_name: prod.outreach_accounts ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}.CreatorID ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerID ;;
  }

  dimension: updater_id {
    type: number
    sql: ${TABLE}.UpdaterID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  dimension: companytype {
    type: string
    sql: ${TABLE}.Attributes.Companytype ;;
  }

  dimension_group: createdat {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Attributes.Createdat ;;
  }

  dimension: custom1 {
    type: string
    sql: ${TABLE}.Attributes.Custom1 ;;
  }

  dimension: custom2 {
    type: string
    sql: ${TABLE}.Attributes.Custom2 ;;
  }

  dimension: custom3 {
    type: string
    sql: ${TABLE}.Attributes.Custom3 ;;
  }

  dimension: custom4 {
    type: string
    sql: ${TABLE}.Attributes.Custom4 ;;
  }

  dimension: custom5 {
    type: string
    sql: ${TABLE}.Attributes.Custom5 ;;
  }

  dimension: custom6 {
    type: string
    sql: ${TABLE}.Attributes.Custom6 ;;
  }

  dimension: custom8 {
    type: string
    sql: ${TABLE}.Attributes.Custom8 ;;
  }

  dimension: custom9 {
    type: string
    sql: ${TABLE}.Attributes.Custom9 ;;
  }

  dimension: customid {
    type: string
    sql: ${TABLE}.Attributes.Customid ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Attributes.Description ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.Attributes.Domain ;;
  }

  dimension: externalsource {
    type: string
    sql: ${TABLE}.Attributes.Externalsource ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Attributes.Industry ;;
  }

  dimension: linkedinemployees {
    type: number
    sql: ${TABLE}.Attributes.Linkedinemployees ;;
  }

  dimension: linkedinurl {
    type: string
    sql: ${TABLE}.Attributes.Linkedinurl ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.Attributes.Locality ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Attributes.Name ;;
  }

  dimension: named {
    type: yesno
    sql: ${TABLE}.Attributes.Named ;;
  }

  dimension: naturalname {
    type: string
    sql: ${TABLE}.Attributes.Naturalname ;;
  }

  dimension: numberofemployees {
    type: number
    sql: ${TABLE}.Attributes.Numberofemployees ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Attributes.Tags ;;
  }

  dimension_group: updatedat {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Attributes.Updatedat ;;
  }

  dimension: websiteurl {
    type: string
    sql: ${TABLE}.Attributes.Websiteurl ;;
  }
}
