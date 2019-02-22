view: outreach_mailboxes {
  sql_table_name: prod.outreach_mailboxes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: attributes {
    hidden: yes
    sql: ${TABLE}.Attributes ;;
  }

  dimension: links {
    hidden: yes
    sql: ${TABLE}.Links ;;
  }

  dimension: relationships {
    hidden: yes
    sql: ${TABLE}.Relationships ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }


    dimension: authid {
      type: number
      value_format_name: id
      sql: ${TABLE}.Attributes.Authid ;;
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

    dimension: editable {
      type: yesno
      sql: ${TABLE}.Attributes.Editable ;;
    }

    dimension: email {
      type: string
      sql: ${TABLE}.Attributes.Email ;;
    }

    dimension: emailprovider {
      type: string
      sql: ${TABLE}.Attributes.Emailprovider ;;
    }

    dimension: emailsignature {
      type: string
      sql: ${TABLE}.Attributes.Emailsignature ;;
    }

    dimension: ewsendpoint {
      type: string
      sql: ${TABLE}.Attributes.Ewsendpoint ;;
    }

    dimension: ewssslverifymode {
      type: string
      sql: ${TABLE}.Attributes.Ewssslverifymode ;;
    }

    dimension: exchangeversion {
      type: string
      sql: ${TABLE}.Attributes.Exchangeversion ;;
    }

    dimension: imaphost {
      type: string
      sql: ${TABLE}.Attributes.Imaphost ;;
    }

    dimension: imapport {
      type: number
      sql: ${TABLE}.Attributes.Imapport ;;
    }

    dimension: imapssl {
      type: yesno
      sql: ${TABLE}.Attributes.Imapssl ;;
    }

    dimension: maxemailsperday {
      type: number
      sql: ${TABLE}.Attributes.Maxemailsperday ;;
    }

    dimension: maxmailingsperday {
      type: number
      sql: ${TABLE}.Attributes.Maxmailingsperday ;;
    }

    dimension: maxmailingsperweek {
      type: number
      sql: ${TABLE}.Attributes.Maxmailingsperweek ;;
    }

    dimension: optoutmessage {
      type: string
      sql: ${TABLE}.Attributes.Optoutmessage ;;
    }

    dimension: optoutsignature {
      type: string
      sql: ${TABLE}.Attributes.Optoutsignature ;;
    }

    dimension: prospectemailexclusions {
      type: string
      sql: ${TABLE}.Attributes.Prospectemailexclusions ;;
    }

    dimension: providertype {
      type: string
      sql: ${TABLE}.Attributes.Providertype ;;
    }

    dimension: senddisabled {
      type: yesno
      sql: ${TABLE}.Attributes.Senddisabled ;;
    }

    dimension_group: senderroredat {
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
      sql: ${TABLE}.Attributes.Senderroredat ;;
    }

    dimension: sendgridwebhookurl {
      type: string
      sql: ${TABLE}.Attributes.Sendgridwebhookurl ;;
    }

    dimension: sendmaxretries {
      type: number
      sql: ${TABLE}.Attributes.Sendmaxretries ;;
    }

    dimension: sendmethod {
      type: string
      sql: ${TABLE}.Attributes.Sendmethod ;;
    }

    dimension: sendperiod {
      type: number
      sql: ${TABLE}.Attributes.Sendperiod ;;
    }

    dimension: sendrequiressync {
      type: yesno
      sql: ${TABLE}.Attributes.Sendrequiressync ;;
    }

    dimension_group: sendsuccessat {
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
      sql: ${TABLE}.Attributes.Sendsuccessat ;;
    }

    dimension: sendthreshold {
      type: number
      sql: ${TABLE}.Attributes.Sendthreshold ;;
    }

    dimension: smtphost {
      type: string
      sql: ${TABLE}.Attributes.Smtphost ;;
    }

    dimension: smtpport {
      type: number
      sql: ${TABLE}.Attributes.Smtpport ;;
    }

    dimension: smtpssl {
      type: yesno
      sql: ${TABLE}.Attributes.Smtpssl ;;
    }

    dimension: smtpusername {
      type: string
      sql: ${TABLE}.Attributes.Smtpusername ;;
    }

    dimension: syncactivefrequency {
      type: number
      sql: ${TABLE}.Attributes.Syncactivefrequency ;;
    }

    dimension: syncdisabled {
      type: yesno
      sql: ${TABLE}.Attributes.Syncdisabled ;;
    }

    dimension_group: syncerroredat {
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
      sql: ${TABLE}.Attributes.Syncerroredat ;;
    }

    dimension_group: syncfinishedat {
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
      sql: ${TABLE}.Attributes.Syncfinishedat ;;
    }

    dimension: syncmethod {
      type: string
      sql: ${TABLE}.Attributes.Syncmethod ;;
    }

    dimension: syncoutreachfolder {
      type: yesno
      sql: ${TABLE}.Attributes.Syncoutreachfolder ;;
    }

    dimension: syncpassivefrequency {
      type: number
      sql: ${TABLE}.Attributes.Syncpassivefrequency ;;
    }

    dimension_group: syncsuccessat {
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
      sql: ${TABLE}.Attributes.Syncsuccessat ;;
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

    dimension: userid {
      type: number
      value_format_name: id
      sql: ${TABLE}.Attributes.Userid ;;
    }

    dimension: username {
      type: string
      sql: ${TABLE}.Attributes.Username ;;
    }



  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: outreach_mailboxes__relationships__user__data {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
}

view: outreach_mailboxes__relationships__updater__data {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
}

view: outreach_mailboxes__relationships__creator__data {
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
}

view: outreach_mailboxes__relationships__mailings__links {
  dimension: related {
    type: string
    sql: ${TABLE}.Related ;;
  }
}

view: outreach_mailboxes__links {
  dimension: self {
    type: string
    sql: ${TABLE}.Self ;;
  }
}

view: outreach_mailboxes__relationships__user {
  dimension: data {
    hidden: yes
    sql: ${TABLE}.Data ;;
  }
}

view: outreach_mailboxes__relationships__updater {
  dimension: data {
    hidden: yes
    sql: ${TABLE}.Data ;;
  }
}

view: outreach_mailboxes__relationships__creator {
  dimension: data {
    hidden: yes
    sql: ${TABLE}.Data ;;
  }
}

view: outreach_mailboxes__relationships__mailings {
  dimension: links {
    hidden: yes
    sql: ${TABLE}.Links ;;
  }
}

view: outreach_mailboxes__relationships {
  dimension: creator {
    hidden: yes
    sql: ${TABLE}.Creator ;;
  }

  dimension: mailings {
    hidden: yes
    sql: ${TABLE}.Mailings ;;
  }

  dimension: updater {
    hidden: yes
    sql: ${TABLE}.Updater ;;
  }

  dimension: user {
    hidden: yes
    sql: ${TABLE}.User ;;
  }
}
