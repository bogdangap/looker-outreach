view: outreach_sequences {
  sql_table_name: prod.outreach_sequences ;;

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
    sql: ${TABLE}.CreatorId ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerID ;;
  }

  dimension: sequencestates {
    hidden: yes
    sql: ${TABLE}.Sequencestates ;;
  }

  dimension: sequencesteps {
    hidden: yes
    sql: ${TABLE}.Sequencesteps ;;
  }

  dimension: updater_id {
    type: number
    sql: ${TABLE}.UpdaterID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  dimension: bouncecount {
    type: number
    sql: ${TABLE}.Attributes.Bouncecount ;;
  }

  dimension: clickcount {
    type: number
    sql: ${TABLE}.Attributes.Clickcount ;;
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

  dimension: delivercount {
    type: number
    sql: ${TABLE}.Attributes.Delivercount ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Attributes.Description ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.Attributes.Enabled ;;
  }

  dimension_group: enabledat {
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
    sql: ${TABLE}.Attributes.Enabledat ;;
  }

  dimension: failurecount {
    type: number
    sql: ${TABLE}.Attributes.Failurecount ;;
  }

  dimension: finishonreply {
    type: yesno
    sql: ${TABLE}.Attributes.Finishonreply ;;
  }

  dimension_group: lastusedat {
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
    sql: ${TABLE}.Attributes.Lastusedat ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.Attributes.Locked ;;
  }

  dimension_group: lockedat {
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
    sql: ${TABLE}.Attributes.Lockedat ;;
  }

  dimension: maxactivations {
    type: number
    sql: ${TABLE}.Attributes.Maxactivations ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Attributes.Name ;;
  }

  dimension: negativereplycount {
    type: number
    sql: ${TABLE}.Attributes.Negativereplycount ;;
  }

  dimension: neutralreplycount {
    type: number
    sql: ${TABLE}.Attributes.Neutralreplycount ;;
  }

  dimension: numcontactedprospects {
    type: number
    sql: ${TABLE}.Attributes.Numcontactedprospects ;;
  }

  dimension: numrepliedprospects {
    type: number
    sql: ${TABLE}.Attributes.Numrepliedprospects ;;
  }

  dimension: opencount {
    type: number
    sql: ${TABLE}.Attributes.Opencount ;;
  }

  dimension: optoutcount {
    type: number
    sql: ${TABLE}.Attributes.Optoutcount ;;
  }

  dimension: positivereplycount {
    type: number
    sql: ${TABLE}.Attributes.Positivereplycount ;;
  }

  dimension: primaryreplyaction {
    type: string
    sql: ${TABLE}.Attributes.Primaryreplyaction ;;
  }

  dimension: replycount {
    type: number
    sql: ${TABLE}.Attributes.Replycount ;;
  }

  dimension: schedulecount {
    type: number
    sql: ${TABLE}.Attributes.Schedulecount ;;
  }

  dimension: scheduleintervaltype {
    type: string
    sql: ${TABLE}.Attributes.Scheduleintervaltype ;;
  }

  dimension: secondaryreplyaction {
    type: string
    sql: ${TABLE}.Attributes.Secondaryreplyaction ;;
  }

  dimension: secondaryreplypauseduration {
    type: number
    sql: ${TABLE}.Attributes.Secondaryreplypauseduration ;;
  }

  dimension: sequencetype {
    type: string
    sql: ${TABLE}.Attributes.Sequencetype ;;
  }

  dimension: sharetype {
    type: string
    sql: ${TABLE}.Attributes.Sharetype ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Attributes.Tags ;;
  }

  dimension: throttlemaxaddsperday {
    type: number
    sql: ${TABLE}.Attributes.Throttlemaxaddsperday ;;
  }

  dimension: throttlepaused {
    type: yesno
    sql: ${TABLE}.Attributes.Throttlepaused ;;
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


view: outreach_sequences__sequencestates__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_sequences__sequencesteps__meta {
  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }
}

view: outreach_sequences__sequencesteps__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_sequences__sequencesteps__data {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: outreach_sequences__sequencestates {
  dimension: links {
    hidden: yes
    sql: ${TABLE}.Links ;;
  }
}

view: outreach_sequences__sequencesteps {
  dimension: data {
    hidden: yes
    sql: ${TABLE}.Data ;;
  }

  dimension: links {
    hidden: yes
    sql: ${TABLE}.Links ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.Meta ;;
  }
}
