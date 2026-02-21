# InfluxDB Retention Policy × Measurement × Fields Matrix

Database: **database**

Generated: Sat Feb 21 20:21:31 CET 2026

| Retention Policy | Measurement | Fields |
|-----------------|-------------|--------|
| autogen | -Temp | value |
| autogen | Außerhauslicht | value |
| autogen | AzVentilator | value |
| autogen | Couchlampe-Energy | value |
| autogen | Couchlicht | value |
| autogen | Fernsehlicht | value |
| autogen | HO-Gudrun-Energy | value |
| autogen | HO-Richard-Energy | value |
| autogen | Kürbis | value |
| autogen | Lux_Value_at_LightsOn | value |
| autogen | PU-Grundwasser | value |
| autogen | PU-Zirkulation-Warmwasser | value |
| autogen | Pumpe-GW-Leistung | value |
| autogen | Sensor-3-Energy | value |
| autogen | Shelly-Ping-Time | value |
| autogen | ShellyButton-Battery | value |
| autogen | Temperature1 | lux.value |
| autogen | auto_15m_verdichtet | avg_apparent_power,avg_current,avg_period,avg_power,avg_voltage,total_period |
| autogen | battery | value |
| autogen | current_prices_15m | current_price |
| autogen | current_prices_1d | current_price |
| autogen | current_prices_1h | current_price |
| autogen | daily_avg_temp | BMP180,DHT22,mean,openweathermap |
| autogen | daily_avg_temp_inside | mean |
| autogen | daily_avg_weather | BH1750Lux,BMP180Pressure,BMP180Temperature,DHT22Humidity,DHT22Temperature,Innen,press-openweathermap,temp-openweathermap |
| autogen | esp_1/BH1750/Lux | value |
| autogen | esp_1/BMP180/BMP180Pressure | value |
| autogen | esp_1/BMP180/BMP180Temperature | value |
| autogen | esp_1/BMP180/BMP180Temperature-Temp | value |
| autogen | esp_1/DHT22/DHT22Humidity | value |
| autogen | esp_1/DHT22/DHT22Temperature | value |
| autogen | esp_1/status/LWT | value |
| autogen | openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,winddirection,windspeed |
| autogen | punat_openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,winddirection,windspeed |
| autogen | q_rev | quaterly |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Batt | value,value |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Lux | value |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Motion | value,value |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Temp | value |
| autogen | solaredge-currentPowerFlow | GRID.currentPower,GRID.status,LOAD.currentPower,LOAD.status,PV.currentPower,PV.status,STORAGE.chargeLevel,STORAGE.critical,STORAGE.currentPower,STORAGE.status |
| autogen | solaredge_modbus_15m | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Leistung,I_AC_Leistung_SF,I_AC_Spannung_SF,I_AC_Strom_SF,I_DC_Leistung,I_DC_Leistung_SF,SOE,available_energy,current,inst_charge_power,inst_discharge_power,mean_C_SunSpec_DID,mean_C_SunSpec_Länge,mean_I_AC_Energie_WH,mean_I_AC_Energie_WH_SF,mean_I_AC_Frequenz,mean_I_AC_Frequenz_SF,mean_I_AC_Leistung,mean_I_AC_Leistung_SF,mean_I_AC_PF,mean_I_AC_PF_SF,mean_I_AC_SpannungAB,mean_I_AC_SpannungAN,mean_I_AC_SpannungBC,mean_I_AC_SpannungBN,mean_I_AC_SpannungCA,mean_I_AC_SpannungCN,mean_I_AC_Spannung_SF,mean_I_AC_Strom,mean_I_AC_StromA,mean_I_AC_StromB,mean_I_AC_StromC,mean_I_AC_Strom_SF,mean_I_AC_VA,mean_I_AC_VAR,mean_I_AC_VAR_SF,mean_I_AC_VA_SF,mean_I_DC_Leistung,mean_I_DC_Leistung_SF,mean_I_DC_Spannung,mean_I_DC_Spannung_SF,mean_I_DC_Strom,mean_I_DC_Strom_SF,mean_I_Status,mean_I_Status_Anbieter,mean_I_Temp_Kühler,mean_I_Temp_SF,mean_M_AC_Power,mean_M_AC_Power_A,mean_M_AC_Power_B,mean_M_AC_Power_C,mean_M_AC_Power_SF,mean_SOE,mean_SOH,mean_available_energy,mean_avg,mean_avg_temp,mean_current,mean_hourly,mean_inst_charge_power,mean_inst_current,mean_inst_discharge_power,mean_inst_power,mean_inst_voltage,mean_max_energy,mean_max_temp,mean_status,status |
| autogen | solaredge_modbus_1d | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Energie_WH_SF,I_AC_Frequenz,I_AC_Frequenz_SF,I_AC_Leistung,I_AC_Leistung_SF,I_AC_PF,I_AC_PF_SF,I_AC_SpannungAB,I_AC_SpannungAN,I_AC_SpannungBC,I_AC_SpannungBN,I_AC_SpannungCA,I_AC_SpannungCN,I_AC_Spannung_SF,I_AC_Strom,I_AC_StromA,I_AC_StromB,I_AC_StromC,I_AC_Strom_SF,I_AC_VA,I_AC_VAR,I_AC_VAR_SF,I_AC_VA_SF,I_DC_Leistung,I_DC_Leistung_SF,I_DC_Spannung,I_DC_Spannung_SF,I_DC_Strom,I_DC_Strom_SF,I_Status,I_Status_Anbieter,I_Temp_Kühler,I_Temp_SF,M_AC_Power,M_AC_Power_A,M_AC_Power_B,M_AC_Power_C,M_AC_Power_SF,SOE,SOH,available_energy,avg_temp,hourly,hourly_price,inst_charge_power,inst_current,inst_discharge_power,inst_power,inst_voltage,max_energy,max_temp,status |
| autogen | solaredge_modbus_1h | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Energie_WH_SF,I_AC_Frequenz,I_AC_Frequenz_SF,I_AC_Leistung,I_AC_Leistung_SF,I_AC_PF,I_AC_PF_SF,I_AC_SpannungAB,I_AC_SpannungAN,I_AC_SpannungBC,I_AC_SpannungBN,I_AC_SpannungCA,I_AC_SpannungCN,I_AC_Spannung_SF,I_AC_Strom,I_AC_StromA,I_AC_StromB,I_AC_StromC,I_AC_Strom_SF,I_AC_VA,I_AC_VAR,I_AC_VAR_SF,I_AC_VA_SF,I_DC_Leistung,I_DC_Leistung_SF,I_DC_Spannung,I_DC_Spannung_SF,I_DC_Strom,I_DC_Strom_SF,I_Status,I_Status_Anbieter,I_Temp_Kühler,I_Temp_SF,M_AC_Power,M_AC_Power_A,M_AC_Power_B,M_AC_Power_C,M_AC_Power_SF,SOE,SOH,available_energy,avg_temp,current,hourly,hourly_price,inst_charge_power,inst_current,inst_discharge_power,inst_power,inst_voltage,max_energy,max_temp,mean_C_SunSpec_DID,mean_C_SunSpec_Länge,mean_I_AC_Energie_WH,mean_I_AC_Energie_WH_SF,mean_I_AC_Frequenz,mean_I_AC_Frequenz_SF,mean_I_AC_Leistung,mean_I_AC_Leistung_SF,mean_I_AC_PF,mean_I_AC_PF_SF,mean_I_AC_SpannungAB,mean_I_AC_SpannungAN,mean_I_AC_SpannungBC,mean_I_AC_SpannungBN,mean_I_AC_SpannungCA,mean_I_AC_SpannungCN,mean_I_AC_Spannung_SF,mean_I_AC_Strom,mean_I_AC_StromA,mean_I_AC_StromB,mean_I_AC_StromC,mean_I_AC_Strom_SF,mean_I_AC_VA,mean_I_AC_VAR,mean_I_AC_VAR_SF,mean_I_AC_VA_SF,mean_I_DC_Leistung,mean_I_DC_Leistung_SF,mean_I_DC_Spannung,mean_I_DC_Spannung_SF,mean_I_DC_Strom,mean_I_DC_Strom_SF,mean_I_Status,mean_I_Status_Anbieter,mean_I_Temp_Kühler,mean_I_Temp_SF,mean_M_AC_Power,mean_M_AC_Power_A,mean_M_AC_Power_B,mean_M_AC_Power_C,mean_M_AC_Power_SF,mean_SOE,mean_SOH,mean_available_energy,mean_avg,mean_avg_temp,mean_current,mean_hourly,mean_inst_charge_power,mean_inst_current,mean_inst_discharge_power,mean_inst_power,mean_inst_voltage,mean_max_energy,mean_max_temp,mean_status,status |
| autogen | solarpower | today,tomorrow |
| autogen | test | v1,v2 |
| autogen | weihnachtsdeko_flur | value |
| autogen | weihnachtsdeko_wohnzimmer | value |
| two_weeks | PU-Grundwasser | value |
| two_weeks | PU-Zirkulation-Warmwasser | value |
| two_weeks | Pumpe-GW-Leistung | value |
| two_weeks | Sensor-3-Energy | value |
| weather | esp_4_sensor | BH1750Lux,BME280Humidity,BME280Pressure,BME280Temperature |
| weather | mikrotik_capsman_registry | .id,bytes,comment,eap-identity,interface,mac-address,packets,rx-rate,rx-signal,ssid,tx-rate,tx-rate-set,uptime,value |
| weather | mikrotik_capsman_rssi | a52,a53,delock-s1,delock-s10,delock-s2,delock-s3,delock-s4,delock-s5,delock-s7,delock-s8,delock-s9,delock-sz1,delock-sz2,delock-sz3,esp-1,esp-2,esp-4,fire-tv,nous-sz2,shelly-1-1,shelly-trv1,solaredge,vuduo2,xbox x |
| weather | openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,rain,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,windb,windd,winddirection,windspeed |
| weather | weather | BMP180Pressure,BMP180Temperature,DHT22Humidity,DHT22Temperature |
| switches | switches | autoladen,delock-s1,delock-s10,delock-s2,delock-s3,delock-s4,delock-s5,delock-s7,delock-s8,delock-s9,delock-sz1,delock-sz2,delock-sz3,nous-sz2,nous-sz4,nous-sz5,nous-sz6,nous-sz7,nous-sz8 |
| ret_solarpower | solarpower | oso,ssw,today,tomorrow |
| ret_awattar | awattar-neu | 00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23 |
| ret_ups | ups | battery.charge.value,battery.voltage.high.value,battery.voltage.low.value,battery.voltage.nominal.value,battery.voltage.value,device.type.value,driver.name.value,driver.parameter.pollinterval.value,driver.parameter.port.value,driver.parameter.synchronous.value,driver.version.internal.value,driver.version.usb.value,driver.version.value,input.current.nominal.value,input.frequency.nominal.value,input.frequency.value,input.voltage.fault.value,input.voltage.nominal.value,input.voltage.value,output.voltage.value,ups.beeper.status.value,ups.delay.shutdown.value,ups.delay.start.value,ups.load.value,ups.productid.value,ups.status.value,ups.type.value,ups.vendorid.value |
| ret_shellytrv | shellytrv | actions_stats.skipped,bat.value,bat.voltage,calibrated,cfg_changed_cnt,charger,cloud.connected,cloud.enabled,dbg_flags,fs_free,fs_size,fw_info.device,fw_info.fw,has_update,mac,mqtt.connected,ps_mode,ram_free,ram_total,serial,thermostats.0.boost_minutes,thermostats.0.pos,thermostats.0.schedule,thermostats.0.schedule_profile,thermostats.0.target_t.enabled,thermostats.0.target_t.units,thermostats.0.target_t.value,thermostats.0.target_t.value_op,thermostats.0.tmp.is_valid,thermostats.0.tmp.units,thermostats.0.tmp.value,thermostats.0.window_open,unixtime,update.has_update,update.new_version,update.old_version,update.status,uptime,wifi_sta.connected,wifi_sta.ip,wifi_sta.rssi,wifi_sta.ssid |
| solaredge_modbus | solaredge_modbus | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Energie_WH_SF,I_AC_Frequenz,I_AC_Frequenz_SF,I_AC_Leistung,I_AC_Leistung_SF,I_AC_PF,I_AC_PF_SF,I_AC_SpannungAB,I_AC_SpannungAN,I_AC_SpannungBC,I_AC_SpannungBN,I_AC_SpannungCA,I_AC_SpannungCN,I_AC_Spannung_SF,I_AC_Strom,I_AC_StromA,I_AC_StromB,I_AC_StromC,I_AC_Strom_SF,I_AC_VA,I_AC_VAR,I_AC_VAR_SF,I_AC_VA_SF,I_DC_Leistung,I_DC_Leistung_SF,I_DC_Spannung,I_DC_Spannung_SF,I_DC_Strom,I_DC_Strom_SF,I_Status,I_Status_Anbieter,I_Temp_Kühler,I_Temp_SF,M_AC_Power,M_AC_Power_A,M_AC_Power_B,M_AC_Power_C,M_AC_Power_SF,SOE,SOH,available_energy,avg,avg,avg_temp,current,hourly,inst_charge_power,inst_current,inst_discharge_power,inst_power,inst_voltage,max_energy,max_temp,status |
| solaredge_modbus | solaredge_modbus_battery_control | AcChargeLimit,AcChargePolicy,BackupReservedSetting,ChargeDischargeDefaultMode,ExportControlLimitMode,ExportControlMode,ExportControlSiteLimit,RemoteCommandMode,RemoteCommandTimeout,battchargelimit,battdischargelimit,storagecontrolmode |
| solaredge_modbus | solaredge_modbus_export_limit | exportpowerlimit |
| solaredge_modbus_energy | solaredge_modbus_energy | M_Energy_VA_SF,M_Energy_W_SF,M_Exported,M_Exported_VA,M_Imported,M_Imported_VA |
| solaredge_status | solaredge_modbus_status | value |
| solaredge_status | solaredge_status | value |
| ret_mikrotik | mikrotik_capsman_registry | .id,bytes,comment,eap-identity,interface,mac-address,packets,rx-rate,rx-signal,ssid,tx-rate,tx-rate-set,uptime |
| ret_mikrotik | mikrotik_capsman_rssi | ANY,a52,a53,delock-s1,delock-s10,delock-s2,delock-s3,delock-s4,delock-s5,delock-s7,delock-s8,delock-s9,delock-sz1,delock-sz2,delock-sz3,ds7,esp-1,esp-2,eviden-nb,fire-tv,imperial-radio,nous-sz2,nous-sz4,private-hp-r,shelly-1-1,shelly-button-1,shelly-trv1,solaredge,uhdtv2,vuduo2,xbox,xbox-x |
| auto_1d | auto | ApparentPower,Current,Factor,Period,Power,ReactivePower,Today,Total,TotalStartTime,Voltage,Yesterday |
| owntracks_retention | Außerhauslicht | value |
| owntracks_retention | AzVentilator | value |
| owntracks_retention | Fernsehlicht | value |
| owntracks_retention | Kürbis | value |
| owntracks_retention | Pumpe-GW-Leistung | value |
| owntracks_retention | battery | value |
| owntracks_retention | owntracks_locations | accuracy,altitude,latitude,longitude |
| owntracks_retention | solaredge-currentPowerFlow | GRID.currentPower,GRID.status,LOAD.currentPower,LOAD.status,PV.currentPower,PV.status,STORAGE.chargeLevel,STORAGE.critical,STORAGE.currentPower,STORAGE.status |
| owntracks_retention | weihnachtsdeko_flur | value |
| owntracks_retention | weihnachtsdeko_wohnzimmer | value |
| ret_frostwaechter | frostwaechter | ENERGY.ApparentPower,ENERGY.Current,ENERGY.Factor,ENERGY.Period,ENERGY.Power,ENERGY.ReactivePower,ENERGY.Today,ENERGY.Total,ENERGY.TotalStartTime,ENERGY.Voltage,ENERGY.Yesterday,Time |

---

**Summary:**
- Total Retention Policies: 17
- Total Measurements: 64
- Possible Combinations: 1088
- Combinations with Data: 81
