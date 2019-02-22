view: outreach_mailings {
  sql_table_name: prod.outreach_mailings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: mailbox_id {
    type: number
    sql: ${TABLE}.MailboxId ;;
  }

  dimension: opportunity_id {
    type: number
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension: prospect_id {
    type: number
    sql: ${TABLE}.ProspectId ;;
  }

  dimension: sequence_id {
    type: number
    sql: ${TABLE}.SequenceId ;;
  }

  dimension: sequence_state_id {
    type: number
    sql: ${TABLE}.SequenceStateId ;;
  }

  dimension: sequence_step_id {
    type: number
    sql: ${TABLE}.SequenceStepId ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.TemplateId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }


  dimension_group: bouncedat {
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
    sql: ${TABLE}.Attributes.Bouncedat ;;
  }

  measure: clickcount {
    type: sum
    sql: ${TABLE}.Attributes.Clickcount ;;
  }

  dimension_group: clickedat {
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
    sql: ${TABLE}.Attributes.Clickedat ;;
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

  dimension_group: deliveredat {
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
    sql: ${TABLE}.Attributes.Deliveredat ;;
  }

  dimension: errorbacktrace {
    type: string
    sql: ${TABLE}.Attributes.Errorbacktrace ;;
  }

  dimension: errorreason {
    type: string
    sql: ${TABLE}.Attributes.Errorreason ;;
  }

  dimension: mailboxaddress {
    type: string
    sql: ${TABLE}.Attributes.Mailboxaddress ;;
  }

  dimension: mailingtype {
    type: string
    sql: ${TABLE}.Attributes.Mailingtype ;;
  }

  dimension_group: markedasspamat {
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
    sql: ${TABLE}.Attributes.Markedasspamat ;;
  }

  dimension: messageid {
    type: string
    sql: ${TABLE}.Attributes.Messageid ;;
  }

  measure: opencount {
    type: sum
    sql: ${TABLE}.Attributes.Opencount ;;
  }

  dimension_group: openedat {
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
    sql: ${TABLE}.Attributes.Openedat ;;
  }

  dimension: overridesafetysettings {
    type: yesno
    sql: ${TABLE}.Attributes.Overridesafetysettings ;;
  }

  dimension: references {
    type: string
    sql: ${TABLE}.Attributes.References ;;
  }

  dimension_group: repliedat {
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
    sql: ${TABLE}.Attributes.Repliedat ;;
  }

  measure: retrycount {
    type: sum
    sql: ${TABLE}.Attributes.Retrycount ;;
  }

  measure: IsClicked {
    type: sum
    sql: ${TABLE}.clicked ;;
  }

  measure: IsDelivered {
    type: sum
    sql: ${TABLE}.delivered ;;
  }

  measure: IsOpened {
    type: sum
    sql: ${TABLE}.opened ;;
  }

  measure: IsReplied {
    type: sum
    sql: ${TABLE}.replied ;;
  }

  dimension: retryinterval {
    type: number
    sql: ${TABLE}.Attributes.Retryinterval ;;
  }

  dimension_group: scheduledat {
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
    sql: ${TABLE}.Attributes.Scheduledat ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.Attributes.State ;;
  }

  dimension_group: statechangedat {
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
    sql: ${TABLE}.Attributes.Statechangedat ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.Attributes.Subject ;;
  }

  dimension: tracklinks {
    type: yesno
    sql: ${TABLE}.Attributes.Tracklinks ;;
  }

  dimension: trackopens {
    type: yesno
    sql: ${TABLE}.Attributes.Trackopens ;;
  }

  dimension_group: unsubscribedat {
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
    sql: ${TABLE}.Attributes.Unsubscribedat ;;
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
}
