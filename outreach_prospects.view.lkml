view: outreach_prospects {
  sql_table_name: prod.outreach_prospects ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.AccountId ;;
  }

  dimension: activesequencestates {
    hidden: yes
    sql: ${TABLE}.Activesequencestates ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}.CreatorID ;;
  }

  dimension: emailaddresses {
    hidden: yes
    sql: ${TABLE}.Emailaddresses ;;
  }

  dimension: opportunities {
    hidden: yes
    sql: ${TABLE}.Opportunities ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: persona_id {
    type: number
    sql: ${TABLE}.PersonaId ;;
  }

  dimension: phonenumbers {
    hidden: yes
    sql: ${TABLE}.Phonenumbers ;;
  }

  dimension: stage_id {
    type: number
    sql: ${TABLE}.StageId ;;
  }

  dimension: updater_id {
    type: number
    sql: ${TABLE}.UpdaterId ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  dimension: addresscity {
    type: string
    sql: ${TABLE}.Attributes.Addresscity ;;
  }

  dimension: addresscountry {
    type: string
    sql: ${TABLE}.Attributes.Addresscountry ;;
  }

  dimension: addressstate {
    type: string
    sql: ${TABLE}.Attributes.Addressstate ;;
  }

  dimension: addressstreet {
    type: string
    sql: ${TABLE}.Attributes.Addressstreet ;;
  }

  dimension: addressstreet2 {
    type: string
    sql: ${TABLE}.Attributes.Addressstreet2 ;;
  }

  dimension: addresszip {
    type: string
    sql: ${TABLE}.Attributes.Addresszip ;;
  }

  dimension_group: callsoptedat {
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
    sql: ${TABLE}.Attributes.Callsoptedat ;;
  }

  dimension: callsoptstatus {
    type: string
    sql: ${TABLE}.Attributes.Callsoptstatus ;;
  }

  dimension: clickcount {
    type: number
    sql: ${TABLE}. Attributes.Clickcount ;;
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

  dimension: custom10 {
    type: string
    sql: ${TABLE}.Attributes.Custom10 ;;
  }

  dimension: custom11 {
    type: string
    sql: ${TABLE}.Attributes.Custom11 ;;
  }

  dimension: custom12 {
    type: string
    sql: ${TABLE}.Attributes.Custom12 ;;
  }

  dimension: custom13 {
    type: string
    sql: ${TABLE}.Attributes.Custom13 ;;
  }

  dimension: custom14 {
    type: string
    sql: ${TABLE}.Attributes.Custom14 ;;
  }

  dimension: custom15 {
    type: string
    sql: ${TABLE}.Attributes.Custom15 ;;
  }

  dimension: custom16 {
    type: string
    sql: ${TABLE}.Attributes.Custom16 ;;
  }

  dimension: custom17 {
    type: string
    sql: ${TABLE}.Attributes.Custom17 ;;
  }

  dimension: custom18 {
    type: string
    sql: ${TABLE}.Attributes.Custom18 ;;
  }

  dimension: custom19 {
    type: string
    sql: ${TABLE}.Attributes.Custom19 ;;
  }

  dimension: custom2 {
    type: string
    sql: ${TABLE}.Attributes.Custom2 ;;
  }

  dimension: custom20 {
    type: string
    sql: ${TABLE}.Attributes.Custom20 ;;
  }

  dimension: custom21 {
    type: string
    sql: ${TABLE}.Attributes.Custom21 ;;
  }

  dimension: custom22 {
    type: string
    sql: ${TABLE}.Attributes.Custom22 ;;
  }

  dimension: custom23 {
    type: string
    sql: ${TABLE}.Attributes.Custom23 ;;
  }

  dimension: custom24 {
    type: string
    sql: ${TABLE}.Attributes.Custom24 ;;
  }

  dimension: custom25 {
    type: string
    sql: ${TABLE}.Attributes.Custom25 ;;
  }

  dimension: custom26 {
    type: string
    sql: ${TABLE}.Attributes.Custom26 ;;
  }

  dimension: custom27 {
    type: string
    sql: ${TABLE}.Attributes.Custom27 ;;
  }

  dimension: custom28 {
    type: string
    sql: ${TABLE}.Attributes.Custom28 ;;
  }

  dimension: custom29 {
    type: string
    sql: ${TABLE}.Attributes.Custom29 ;;
  }

  dimension: custom3 {
    type: string
    sql: ${TABLE}.Attributes.Custom3 ;;
  }

  dimension: custom30 {
    type: string
    sql: ${TABLE}.Attributes.Custom30 ;;
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

  dimension: custom7 {
    type: string
    sql: ${TABLE}.Attributes.Custom7 ;;
  }

  dimension: custom8 {
    type: string
    sql: ${TABLE}.Attributes.Custom8 ;;
  }

  dimension: custom9 {
    type: string
    sql: ${TABLE}.Attributes.Custom9 ;;
  }

  dimension: degree {
    type: string
    sql: ${TABLE}.Attributes.Degree ;;
  }

  dimension: emails {
    type: string
    sql: ${TABLE}.Attributes.Emails ;;
  }

  dimension_group: emailsoptedat {
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
    sql: ${TABLE}.Attributes.Emailsoptedat ;;
  }

  dimension: emailsoptstatus {
    type: string
    sql: ${TABLE}.Attributes.Emailsoptstatus ;;
  }

  dimension_group: engagedat {
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
    sql: ${TABLE}.Attributes.Engagedat ;;
  }

  dimension: engagedscore {
    type: number
    sql: ${TABLE}.Attributes.Engagedscore ;;
  }

  dimension: externalsource {
    type: string
    sql: ${TABLE}.Attributes.Externalsource ;;
  }

  dimension: facebookurl {
    type: string
    sql: ${TABLE}.Attributes.Facebookurl ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Attributes.Firstname ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Attributes.Gender ;;
  }

  dimension: homephones {
    type: string
    sql: ${TABLE}.Attributes.Homephones ;;
  }

  dimension_group: jobstartdate {
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
    sql: ${TABLE}.Attributes.Jobstartdate ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.Attributes.Lastname ;;
  }

  dimension: linkedinid {
    type: string
    sql: ${TABLE}.Attributes.Linkedinid ;;
  }

  dimension: linkedinslug {
    type: string
    sql: ${TABLE}.Attributes.Linkedinslug ;;
  }

  dimension: linkedinurl {
    type: string
    sql: ${TABLE}.Attributes.Linkedinurl ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.Attributes.Middlename ;;
  }

  dimension: mobilephones {
    type: string
    sql: ${TABLE}.Attributes.Mobilephones ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Attributes.Name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.Attributes.Nickname ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Attributes.Occupation ;;
  }

  dimension: opencount {
    type: number
    sql: ${TABLE}.Attributes.Opencount ;;
  }

  dimension: optedout {
    type: yesno
    sql: ${TABLE}.Attributes.Optedout ;;
  }

  dimension_group: optedoutat {
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
    sql: ${TABLE}.Attributes.Optedoutat ;;
  }

  dimension: otherphones {
    type: string
    sql: ${TABLE}.Attributes.Otherphones ;;
  }

  dimension: personalnote1 {
    type: string
    sql: ${TABLE}.Attributes.Personalnote1 ;;
  }

  dimension: personalnote2 {
    type: string
    sql: ${TABLE}.Attributes.Personalnote2 ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Attributes.Region ;;
  }

  dimension: replycount {
    type: number
    sql: ${TABLE}.Attributes.Replycount ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.Attributes.School ;;
  }

  dimension_group: smsoptedat {
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
    sql: ${TABLE}.Attributes.Smsoptedat ;;
  }

  dimension: smsoptstatus {
    type: string
    sql: ${TABLE}.Attributes.Smsoptstatus ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Attributes.Source ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.Attributes.Tags ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.Attributes.Timezone ;;
  }

  dimension: timezoneiana {
    type: string
    sql: ${TABLE}.Attributes.Timezoneiana ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Attributes.Title ;;
  }

  dimension_group: touchedat {
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
    sql: ${TABLE}.Attributes.Touchedat ;;
  }

  dimension: twitterurl {
    type: string
    sql: ${TABLE}.Attributes.Twitterurl ;;
  }

  dimension: twitterusername {
    type: string
    sql: ${TABLE}.Attributes.Twitterusername ;;
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

  dimension: websiteurl1 {
    type: string
    sql: ${TABLE}.Attributes.Websiteurl1 ;;
  }

  dimension: websiteurl2 {
    type: string
    sql: ${TABLE}.Attributes.Websiteurl2 ;;
  }

  dimension: websiteurl3 {
    type: string
    sql: ${TABLE}.Attributes.Websiteurl3 ;;
  }

  dimension: workphones {
    type: string
    sql: ${TABLE}.Attributes.Workphones ;;
  }
}

view: outreach_prospects__phonenumbers__meta {
  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }
}

view: outreach_prospects__phonenumbers__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_prospects__phonenumbers__data {
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

view: outreach_prospects__opportunities__meta {
  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }
}

view: outreach_prospects__opportunities__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_prospects__opportunities__data {
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

view: outreach_prospects__emailaddresses__meta {
  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }
}

view: outreach_prospects__emailaddresses__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_prospects__emailaddresses__data {
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

view: outreach_prospects__activesequencestates {
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

view: outreach_prospects__phonenumbers {
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

view: outreach_prospects__opportunities {
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

view: outreach_prospects__emailaddresses {
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
view: outreach_prospects__activesequencestates__meta {
  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }
}

view: outreach_prospects__activesequencestates__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_prospects__activesequencestates__data {
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
