view: outreach_tasks {
  sql_table_name: prod.outreach_tasks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: call_id {
    type: number
    sql: ${TABLE}.CallId ;;
  }

  dimension: completer_id {
    type: number
    sql: ${TABLE}.CompleterId ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}.CreatorId ;;
  }

  dimension: mailing_id {
    type: number
    sql: ${TABLE}.MailingId ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerId ;;
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

  dimension: task_priority_name {
    type: string
    sql: ${TABLE}.TaskPriorityName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, task_priority_name]
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Attributes.Action ;;
  }

  dimension: completed {
    type: yesno
    sql: ${TABLE}.Attributes.Completed ;;
  }

  dimension_group: completedat {
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
    sql: ${TABLE}.Attributes.Completedat ;;
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

  dimension_group: dueat {
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
    sql: ${TABLE}.Attributes.Dueat ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.Attributes.Note ;;
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

  dimension: tasktype {
    type: string
    sql: ${TABLE}.Attributes.Tasktype ;;
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

  measure: IsOnTime {
    type: sum
    sql: ${TABLE}.IsOnTime ;;
  }
}
