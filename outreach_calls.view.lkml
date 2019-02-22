view: outreach_calls {
  sql_table_name: prod.outreach_calls ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: call_disposition_name {
    type: string
    sql: ${TABLE}.CallDispositionName ;;
  }

  dimension: call_purpose_name {
    type: string
    sql: ${TABLE}.CallPurposeName ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, call_purpose_name, call_disposition_name]
  }


  dimension_group: answeredat {
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
    sql: ${TABLE}.Attributes.Answeredat ;;
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

  dimension: direction {
    type: string
    sql: ${TABLE}.Attributes.Direction ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.Attributes.``From`` ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.Attributes.Note ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.Attributes.Outcome ;;
  }

  dimension: sequenceaction {
    type: string
    sql: ${TABLE}.Attributes.Sequenceaction ;;
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

  dimension: tags {
    type: string
    sql: ${TABLE}.Attributes.Tags ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}.Attributes.``To`` ;;
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

  dimension: usercalltype {
    type: string
    sql: ${TABLE}.Attributes.Usercalltype ;;
  }

  measure: IsCompleted {
    type: sum
    sql: ${TABLE}.IsCompleted ;;
  }

  measure: IsAnswered {
    type: sum
    sql: ${TABLE}.IsAnswered ;;
  }


}
