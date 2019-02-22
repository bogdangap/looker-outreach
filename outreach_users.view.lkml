view: outreach_users {
  sql_table_name: prod.outreach_users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }


  dimension: activitynotificationsdisabled {
    type: yesno
    sql: ${TABLE}.Attributes.Activitynotificationsdisabled ;;
  }

  dimension: bouncewarningemailenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Bouncewarningemailenabled ;;
  }

  dimension: bridgephone {
    type: number
    sql: ${TABLE}.Attributes.Bridgephone ;;
  }

  dimension: bridgephoneextension {
    type: string
    sql: ${TABLE}.Attributes.Bridgephoneextension ;;
  }

  dimension: controlledtabdefault {
    type: string
    sql: ${TABLE}.Attributes.Controlledtabdefault ;;
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

  dimension_group: currentsigninat {
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
    sql: ${TABLE}.Attributes.Currentsigninat ;;
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

  dimension: dailydigestemailenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Dailydigestemailenabled ;;
  }

  dimension: duties {
    hidden: yes
    sql: ${TABLE}.Attributes.Duties ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Attributes.Email ;;
  }

  dimension: enablevoicerecordings {
    type: yesno
    sql: ${TABLE}.Attributes.Enablevoicerecordings ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Attributes.Firstname ;;
  }

  dimension: inboundbridgephone {
    type: number
    sql: ${TABLE}.Attributes.Inboundbridgephone ;;
  }

  dimension: inboundbridgephoneextension {
    type: string
    sql: ${TABLE}.Attributes.Inboundbridgephoneextension ;;
  }

  dimension: inboundcallbehavior {
    type: string
    sql: ${TABLE}.Attributes.Inboundcallbehavior ;;
  }

  dimension: inboundvoicemailcustommessagetext {
    type: string
    sql: ${TABLE}.Attributes.Inboundvoicemailcustommessagetext ;;
  }

  dimension: inboundvoicemailmessagetextvoice {
    type: string
    sql: ${TABLE}.Attributes.Inboundvoicemailmessagetextvoice ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.Attributes.Lastname ;;
  }

  dimension_group: lastsigninat {
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
    sql: ${TABLE}.Attributes.Lastsigninat ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.Attributes.Locked ;;
  }

  dimension: mailboxerroremailenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Mailboxerroremailenabled ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Attributes.Name ;;
  }

  dimension: notificationsenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Notificationsenabled ;;
  }

  dimension: oceclicktodialeverywhere {
    type: yesno
    sql: ${TABLE}.Attributes.Oceclicktodialeverywhere ;;
  }

  dimension: ocegmailtoolbar {
    type: yesno
    sql: ${TABLE}.Attributes.Ocegmailtoolbar ;;
  }

  dimension: ocegmailtrackingstate {
    type: string
    sql: ${TABLE}.Attributes.Ocegmailtrackingstate ;;
  }

  dimension: ocesalesforceemaildecorating {
    type: yesno
    sql: ${TABLE}.Attributes.Ocesalesforceemaildecorating ;;
  }

  dimension: ocesalesforcephonedecorating {
    type: yesno
    sql: ${TABLE}.Attributes.Ocesalesforcephonedecorating ;;
  }

  dimension: oceuniversaltaskflow {
    type: yesno
    sql: ${TABLE}.Attributes.Oceuniversaltaskflow ;;
  }

  dimension: ocewindowmode {
    type: yesno
    sql: ${TABLE}.Attributes.Ocewindowmode ;;
  }

  dimension_group: onboardedat {
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
    sql: ${TABLE}.Attributes.Onboardedat ;;
  }

  dimension_group: passwordexpiresat {
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
    sql: ${TABLE}.Attributes.Passwordexpiresat ;;
  }

  dimension: phonecountrycode {
    type: string
    sql: ${TABLE}.Attributes.Phonecountrycode ;;
  }

  dimension: phonenumber {
    type: number
    sql: ${TABLE}.Attributes.Phonenumber ;;
  }

  dimension: phonetype {
    type: string
    sql: ${TABLE}.Attributes.Phonetype ;;
  }

  dimension: preferslocalpresence {
    type: yesno
    sql: ${TABLE}.Attributes.Preferslocalpresence ;;
  }

  dimension: sendernotificationsexcluded {
    type: yesno
    sql: ${TABLE}.Attributes.Sendernotificationsexcluded ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Attributes.Title ;;
  }

  dimension: unknownreplyemailenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Unknownreplyemailenabled ;;
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

  dimension: username {
    type: string
    sql: ${TABLE}.Attributes.Username ;;
  }

  dimension: weeklydigestemailenabled {
    type: yesno
    sql: ${TABLE}.Attributes.Weeklydigestemailenabled ;;
  }
}

view: outreach_users__attributes__duties {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: duty_type {
    type: string
    sql: ${TABLE}.duty_type ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
}
