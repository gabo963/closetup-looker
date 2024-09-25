view: contacts {
  sql_table_name: `galvanic-augury-390714.hubspot_dataset.contacts` ;;

  dimension: banco {
    type: string
    sql: ${TABLE}.Banco ;;
  }
  dimension_group: becamea_customer {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BecameaCustomerDate ;;
  }
  dimension_group: becamea_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BecameaLeadDate ;;
  }
  dimension_group: becamea_marketing_qualified_lead {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BecameaMarketingQualifiedLeadDate ;;
  }
  dimension_group: becamean_opportunity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.BecameanOpportunityDate ;;
  }
  dimension: cdigode_ciudad {
    type: number
    sql: ${TABLE}.`CódigodeCiudad` ;;
  }
  dimension: cdigodelpas {
    type: string
    sql: ${TABLE}.`Códigodelpaís` ;;
  }
  dimension: cdigodelvendedor {
    type: string
    sql: ${TABLE}.`Códigodelvendedor` ;;
  }
  dimension: cdigotipodedocumento {
    type: number
    sql: ${TABLE}.`Códigotipodedocumento` ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: ciudaddel_vendedor {
    type: string
    sql: ${TABLE}.CiudaddelVendedor ;;
  }
  dimension_group: close {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CloseDate ;;
  }
  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }
  dimension: companysize {
    type: string
    sql: ${TABLE}.Companysize ;;
  }
  dimension: consecutivodelvendedor {
    type: number
    sql: ${TABLE}.Consecutivodelvendedor ;;
  }
  dimension: consecutivopersonajurdica {
    type: number
    sql: ${TABLE}.`Consecutivopersonajurídica` ;;
  }
  dimension: consecutivopersonanatural {
    type: number
    sql: ${TABLE}.Consecutivopersonanatural ;;
  }
  dimension: contactowner {
    type: string
    sql: ${TABLE}.Contactowner ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Year"
      value: "year"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Week"
      value: "week"
    }
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreateDate ;;
  }
  dimension: date {
    sql: {% if date_granularity._parameter_value == 'year' %}
          ${create_year}
        {% elsif date_granularity._parameter_value == 'month' %}
          ${create_month}
        {% elsif date_granularity._parameter_value == 'week' %}
          ${create_week}
        {% endif %} ;;
  }
  dimension_group: dateentered_customer_lifecycle_stage_pipeline__ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Dateentered_Customer_LifecycleStagePipeline__ ;;
  }
  dimension_group: dateentered_lead_lifecycle_stage_pipeline__ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Dateentered_Lead_LifecycleStagePipeline__ ;;
  }
  dimension_group: dateentered_opportunity_lifecycle_stage_pipeline__ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Dateentered_Opportunity_LifecycleStagePipeline__ ;;
  }
  dimension_group: dateexited_lead_lifecycle_stage_pipeline__ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Dateexited_Lead_LifecycleStagePipeline__ ;;
  }
  dimension_group: dateexited_opportunity_lifecycle_stage_pipeline__ {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Dateexited_Opportunity_LifecycleStagePipeline__ ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }
  dimension: email_domain {
    type: string
    sql: ${TABLE}.EmailDomain ;;
  }
  dimension_group: fechadenacimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fechadenacimiento ;;
  }
  dimension_group: first_conversion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FirstConversionDate ;;
  }
  dimension_group: first_deal_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FirstDealCreatedDate ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }
  dimension: first_page_seen {
    type: string
    sql: ${TABLE}.FirstPageSeen ;;
  }
  dimension: first_referring_site {
    type: string
    sql: ${TABLE}.FirstReferringSite ;;
  }
  dimension_group: firstmarketingemailclickdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Firstmarketingemailclickdate ;;
  }
  dimension_group: firstmarketingemailopendate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Firstmarketingemailopendate ;;
  }
  dimension_group: firstmarketingemailreplydate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Firstmarketingemailreplydate ;;
  }
  dimension_group: firstmarketingemailsenddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Firstmarketingemailsenddate ;;
  }
  dimension: gnero {
    type: string
    sql: ${TABLE}.`Género` ;;
  }
  dimension: informacincomplementariadeladireccin {
    type: string
    sql: ${TABLE}.`Informacióncomplementariadeladirección` ;;
  }
  dimension: ipcity {
    type: string
    sql: ${TABLE}.IPCity ;;
  }
  dimension: ipcountry {
    type: string
    sql: ${TABLE}.IPCountry ;;
  }
  dimension: ipcountry_code {
    type: string
    sql: ${TABLE}.IPCountryCode ;;
  }
  dimension: ipregion {
    type: string
    sql: ${TABLE}.IPRegion ;;
  }
  dimension: ipregion_code {
    type: string
    sql: ${TABLE}.IPRegionCode ;;
  }
  dimension: iptimezone {
    type: string
    sql: ${TABLE}.IPTimezone ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }
  dimension: lifecycle_stage {
    type: string
    sql: ${TABLE}.LifecycleStage ;;
  }
  dimension: marketingcontactstatus {
    type: string
    sql: ${TABLE}.Marketingcontactstatus ;;
  }
  dimension: marketingemailsclicked {
    type: number
    sql: ${TABLE}.Marketingemailsclicked ;;
  }
  dimension: marketingemailsdelivered {
    type: number
    sql: ${TABLE}.Marketingemailsdelivered ;;
  }
  dimension: marketingemailsopened {
    type: number
    sql: ${TABLE}.Marketingemailsopened ;;
  }
  dimension: memberemail {
    type: string
    sql: ${TABLE}.Memberemail ;;
  }
  dimension: mobile_phone_number {
    type: string
    sql: ${TABLE}.MobilePhoneNumber ;;
  }
  dimension: nmerodecuenta {
    type: string
    sql: ${TABLE}.`Númerodecuenta` ;;
  }
  dimension: nmerodedocumento {
    type: string
    sql: ${TABLE}.`Númerodedocumento` ;;
  }
  dimension: nmerodedocumentodeltitulardelacuenta {
    type: string
    sql: ${TABLE}.`Númerodedocumentodeltitulardelacuenta` ;;
  }
  dimension: nombredeltitulardelacuenta {
    type: string
    sql: ${TABLE}.Nombredeltitulardelacuenta ;;
  }
  dimension: numberof_associated_deals {
    type: number
    sql: ${TABLE}.NumberofAssociatedDeals ;;
  }
  dimension: numberof_form_submissions {
    type: number
    sql: ${TABLE}.NumberofFormSubmissions ;;
  }
  dimension: numberof_pageviews {
    type: number
    sql: ${TABLE}.NumberofPageviews ;;
  }
  dimension: numberof_sales_activities {
    type: number
    sql: ${TABLE}.NumberofSalesActivities ;;
  }
  dimension: numberof_sessions {
    type: number
    sql: ${TABLE}.NumberofSessions ;;
  }
  dimension: numberof_unique_forms_submitted {
    type: number
    sql: ${TABLE}.NumberofUniqueFormsSubmitted ;;
  }
  dimension: publicadoensiigo {
    type: string
    sql: ${TABLE}.publicadoensiigo ;;
  }
  dimension: record_id {
    type: number
    sql: ${TABLE}.RecordID ;;
  }
  dimension: recordsource {
    type: string
    sql: ${TABLE}.Recordsource ;;
  }
  dimension_group: registered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RegisteredAt ;;
  }
  dimension: registeredmember {
    type: number
    sql: ${TABLE}.Registeredmember ;;
  }
  dimension: registration_method {
    type: string
    sql: ${TABLE}.RegistrationMethod ;;
  }
  dimension: segmentacion_marketing {
    type: string
    sql: ${TABLE}.SegmentacionMarketing ;;
  }
  dimension: street_address {
    type: string
    sql: ${TABLE}.StreetAddress ;;
  }
  dimension_group: time_first_seen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TimeFirstSeen ;;
  }
  dimension_group: time_last_seen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TimeLastSeen ;;
  }
  dimension: time_zone {
    type: string
    sql: ${TABLE}.TimeZone ;;
  }
  dimension_group: timeof_first_session {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TimeofFirstSession ;;
  }
  dimension_group: timeof_last_session {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.TimeofLastSession ;;
  }
  dimension: tipodecontacto {
    type: string
    sql: ${TABLE}.Tipodecontacto ;;
  }
  dimension: tipodecuenta {
    type: string
    sql: ${TABLE}.Tipodecuenta ;;
  }
  dimension: tipodedocumento {
    type: string
    sql: ${TABLE}.Tipodedocumento ;;
  }
  dimension: tipodevendedor {
    type: string
    sql: ${TABLE}.Tipodevendedor ;;
  }
  dimension: total_revenue {
    type: number
    sql: ${TABLE}.TotalRevenue ;;
  }
  measure: count {
    type: count
    drill_fields: [company_name, last_name, first_name]
  }
}
