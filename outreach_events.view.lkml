view: outreach_events {
  sql_table_name: prod.outreach_events ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MailingId ;;
  }

  dimension: prospect_id {
    type: number
    sql: ${TABLE}.ProspectId ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
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

  dimension_group: eventat {
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
    sql: ${TABLE}.Attributes.Eventat ;;
  }

  dimension: mailingid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Attributes.Mailingid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Attributes.Name ;;
  }

  dimension: requestcity {
    type: string
    sql: ${TABLE}.Attributes.Requestcity ;;
  }

  dimension: requestdevice {
    type: string
    sql: ${TABLE}.Attributes.Requestdevice ;;
  }

  dimension: requestproxied {
    type: yesno
    sql: ${TABLE}.Attributes.Requestproxied ;;
  }

  dimension: requestregion {
    type: string
    sql: ${TABLE}.Attributes.Requestregion ;;
  }
}
