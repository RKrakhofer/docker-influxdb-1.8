# InfluxDB Retention Policy × Measurement × Fields Matrix

Host: **reserve:8086**  
Database: **database**

Generated: Sun Mar  1 19:22:33 CET 2026

## Measurements per Retention Policy

| Retention Policy | Measurement | Fields | Last Written |
|-----------------|-------------|--------|--------------|
| autogen | -Temp | value | 2y ago |
| autogen | Außerhauslicht | value | 12m ago |
| autogen | Couchlampe-Energy | value | 2y ago |
| autogen | Couchlicht | value | 1y ago |
| autogen | Fernsehlicht | value | 12m ago |
| autogen | HO-Gudrun-Energy | value | 0m ago |
| autogen | HO-Richard-Energy | value | 0m ago |
| autogen | Kürbis | value | 12m ago |
| autogen | Lux_Value_at_LightsOn | value | 1y ago |
| autogen | PU-Grundwasser | value | 14h ago |
| autogen | PU-Zirkulation-Warmwasser | value | 14h ago |
| autogen | Shelly-Ping-Time | value | 2y ago |
| autogen | ShellyButton-Battery | value | 12m ago |
| autogen | ShellyButton-Battery_OLD | value | 1h ago |
| autogen | Temperature1 | lux.value | 2y ago |
| autogen | auto_15m_verdichtet | avg_apparent_power,avg_current,avg_period,avg_power,avg_voltage,total_period | 22m ago |
| autogen | auto_flat | battery_autonomy,battery_health_capacity,battery_level,battery_voltage,charging_mode,charging_plugged,charging_rate,charging_remaining_s,charging_status,doors_driver_open,doors_passenger_open,doors_rearleft_open,doors_rearright_open,doors_rearwindow_open,doors_roofwindow_open,doors_trunk_open,fuel_autonomy,fuel_consumption_l100,fuel_level,ignition,last_trip_elec_kw100,last_trip_fuel_l100,moving,odometer,position_alt,position_lat,position_lon,position_signal_quality,preconditioning_status,service_type,speed,temperature | 13m ago |
| autogen | auto_trip | distance_km,duration_min,elec_kw_100km,elec_kwh_total,fuel_l_100km,speed_avg_kmh,start_at | 13m ago |
| autogen | battery | value | 1m ago |
| autogen | daily_avg_temp | BMP180,DHT22,mean,openweathermap | 2y ago |
| autogen | daily_avg_temp_inside | mean | 2y ago |
| autogen | daily_avg_weather | BH1750Lux,BMP180Pressure,BMP180Temperature,DHT22Humidity,DHT22Temperature,Innen,press-openweathermap,temp-openweathermap | 1d ago |
| autogen | esp_1/BH1750/Lux | value | 2y ago |
| autogen | esp_1/BMP180/BMP180Pressure | value | 2y ago |
| autogen | esp_1/BMP180/BMP180Temperature | value | 2y ago |
| autogen | esp_1/DHT22/DHT22Humidity | value | 2y ago |
| autogen | esp_1/DHT22/DHT22Temperature | value | 2y ago |
| autogen | esp_1/status/LWT | value | 2y ago |
| autogen | openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,rain,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,windb,windd,winddirection,windspeed | 15h ago |
| autogen | owntracks_locations | accuracy,altitude,device_id,latitude,longitude,region,type,user | 1d ago |
| autogen | punat_openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,winddirection,windspeed | 2y ago |
| autogen | q_rev | quaterly | 22m ago |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Batt | value | 2y ago |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Lux | value | 2y ago |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Motion | value | 2y ago |
| autogen | shellies/shellymotion2-8CF68108C8E9/info-Temp | value | 1m ago |
| autogen | shellies_shellymotion2-8CF68108C8E9_info-Batt | value | 1y ago |
| autogen | shellies_shellymotion2-8CF68108C8E9_info-Lux | value | 1y ago |
| autogen | shellies_shellymotion2-8CF68108C8E9_info-Motion | value | 4mo ago |
| autogen | shellies_shellymotion2-8CF68108C8E9_info-Temp | value | 14h ago |
| autogen | solaredge-currentPowerFlow | GRID.currentPower,GRID.status,LOAD.currentPower,LOAD.status,PV.currentPower,PV.status,STORAGE.chargeLevel,STORAGE.critical,STORAGE.currentPower,STORAGE.status | 13m ago |
| autogen | solaredge_modbus_15m | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Leistung,I_AC_Leistung_SF,I_AC_Spannung_SF,I_AC_Strom_SF,I_DC_Leistung,I_DC_Leistung_SF,SOE,available_energy,current,inst_charge_power,inst_discharge_power,mean_current,status | 22m ago |
| autogen | solaredge_modbus_1h | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Energie_WH_SF,I_AC_Frequenz,I_AC_Frequenz_SF,I_AC_Leistung,I_AC_Leistung_SF,I_AC_PF,I_AC_PF_SF,I_AC_SpannungAB,I_AC_SpannungAN,I_AC_SpannungBC,I_AC_SpannungBN,I_AC_SpannungCA,I_AC_SpannungCN,I_AC_Spannung_SF,I_AC_Strom,I_AC_StromA,I_AC_StromB,I_AC_StromC,I_AC_Strom_SF,I_AC_VA,I_AC_VAR,I_AC_VAR_SF,I_AC_VA_SF,I_DC_Leistung,I_DC_Leistung_SF,I_DC_Spannung,I_DC_Spannung_SF,I_DC_Strom,I_DC_Strom_SF,I_Status,I_Status_Anbieter,I_Temp_Kühler,I_Temp_SF,M_AC_Power,M_AC_Power_A,M_AC_Power_B,M_AC_Power_C,M_AC_Power_SF,SOE,SOH,available_energy,avg_temp,current,inst_charge_power,inst_current,inst_discharge_power,inst_power,inst_voltage,max_energy,max_temp,mean_current,status | 1h ago |
| autogen | test_measurement | value | 6h ago |
| autogen | weihnachtsdeko_wohnzimmer | value | 12m ago |
| auto_1d | auto | ApparentPower,Current,Factor,Period,Power,ReactivePower,Today,Total,TotalStartTime,Voltage,Yesterday | 0m ago |
| two_weeks | PU-Grundwasser | value | 0m ago |
| two_weeks | PU-Zirkulation-Warmwasser | value | 0m ago |
| two_weeks | Pumpe-GW-Leistung | value | 0m ago |
| two_weeks | Sensor-3-Energy | value | 0m ago |
| weather | esp_4_sensor | BH1750Lux,BME280Humidity,BME280Pressure,BME280Temperature | 1m ago |
| weather | openweathermap | clouds,description,detail,humidity,icon,id,location,maxtemp,mintemp,pressure,sunrise,sunset,temp_maxc,temp_minc,tempc,tempk,weather,windb,windd,winddirection,windspeed | 1m ago |
| switches | switches | autoladen,delock-s1,delock-s10,delock-s2,delock-s3,delock-s4,delock-s5,delock-s7,delock-s8,delock-s9,delock-sz1,delock-sz2,delock-sz3,nous-sz4 | 12m ago |
| ret_solarpower | solarpower | oso,ssw,today,tomorrow | 0m ago |
| ret_awattar | awattar-neu | 00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23 | 13m ago |
| ret_ups | ups | battery.charge.value,battery.voltage.high.value,battery.voltage.low.value,battery.voltage.nominal.value,battery.voltage.value,device.type.value,driver.name.value,driver.parameter.pollinterval.value,driver.parameter.port.value,driver.parameter.synchronous.value,driver.version.internal.value,driver.version.usb.value,driver.version.value,input.current.nominal.value,input.frequency.nominal.value,input.frequency.value,input.voltage.fault.value,input.voltage.nominal.value,input.voltage.value,output.voltage.value,ups.beeper.status.value,ups.delay.shutdown.value,ups.delay.start.value,ups.load.value,ups.productid.value,ups.status.value,ups.type.value,ups.vendorid.value | 3m ago |
| ret_shellytrv | shellytrv | actions_stats.skipped,bat.value,bat.voltage,calibrated,cfg_changed_cnt,charger,cloud.connected,cloud.enabled,dbg_flags,fs_free,fs_size,fw_info.device,fw_info.fw,has_update,mac,mqtt.connected,ps_mode,ram_free,ram_total,serial,thermostats.0.boost_minutes,thermostats.0.pos,thermostats.0.schedule,thermostats.0.schedule_profile,thermostats.0.target_t.enabled,thermostats.0.target_t.units,thermostats.0.target_t.value,thermostats.0.target_t.value_op,thermostats.0.tmp.is_valid,thermostats.0.tmp.units,thermostats.0.tmp.value,thermostats.0.window_open,unixtime,update.has_update,update.new_version,update.old_version,update.status,uptime,wifi_sta.connected,wifi_sta.ip,wifi_sta.rssi,wifi_sta.ssid | 3m ago |
| solaredge_modbus | Außerhauslicht | value | 2y ago |
| solaredge_modbus | Couchlicht | value | 2y ago |
| solaredge_modbus | Fernsehlicht | value | 2y ago |
| solaredge_modbus | HO-Gudrun-Energy | value | 2y ago |
| solaredge_modbus | HO-Richard-Energy | value | 2y ago |
| solaredge_modbus | Kürbis | value | 2y ago |
| solaredge_modbus | PU-Grundwasser | value | 2y ago |
| solaredge_modbus | PU-Zirkulation-Warmwasser | value | 2y ago |
| solaredge_modbus | daily_avg_weather | BH1750Lux,BMP180Pressure,BMP180Temperature,DHT22Humidity,DHT22Temperature,Innen,press-openweathermap,temp-openweathermap | 2y ago |
| solaredge_modbus | shellies/shellymotion2-8CF68108C8E9/info-Batt | value | 2y ago |
| solaredge_modbus | shellies/shellymotion2-8CF68108C8E9/info-Lux | value | 2y ago |
| solaredge_modbus | shellies/shellymotion2-8CF68108C8E9/info-Motion | value | 2y ago |
| solaredge_modbus | shellies/shellymotion2-8CF68108C8E9/info-Temp | value | 2y ago |
| solaredge_modbus | solaredge_modbus | C_SunSpec_DID,C_SunSpec_Länge,I_AC_Energie_WH,I_AC_Energie_WH_SF,I_AC_Frequenz,I_AC_Frequenz_SF,I_AC_Leistung,I_AC_Leistung_SF,I_AC_PF,I_AC_PF_SF,I_AC_SpannungAB,I_AC_SpannungAN,I_AC_SpannungBC,I_AC_SpannungBN,I_AC_SpannungCA,I_AC_SpannungCN,I_AC_Spannung_SF,I_AC_Strom,I_AC_StromA,I_AC_StromB,I_AC_StromC,I_AC_Strom_SF,I_AC_VA,I_AC_VAR,I_AC_VAR_SF,I_AC_VA_SF,I_DC_Leistung,I_DC_Leistung_SF,I_DC_Spannung,I_DC_Spannung_SF,I_DC_Strom,I_DC_Strom_SF,I_Status,I_Status_Anbieter,I_Temp_Kühler,I_Temp_SF,M_AC_Power,M_AC_Power_A,M_AC_Power_B,M_AC_Power_C,M_AC_Power_SF,SOE,SOH,available_energy,avg,avg,avg_temp,current,hourly,inst_charge_power,inst_current,inst_discharge_power,inst_power,inst_voltage,max_energy,max_temp,status | 0m ago |
| solaredge_modbus | solaredge_modbus_battery_control | AcChargeLimit,AcChargePolicy,BackupReservedSetting,ChargeDischargeDefaultMode,ExportControlLimitMode,ExportControlMode,ExportControlSiteLimit,RemoteCommandMode,RemoteCommandTimeout,battchargelimit,battdischargelimit,storagecontrolmode | 0m ago |
| solaredge_modbus | solaredge_modbus_export_limit | exportpowerlimit | 0m ago |
| solaredge_modbus | test | v1,v2 | 56y ago |
| solaredge_modbus_energy | solaredge_modbus_energy | M_Energy_VA_SF,M_Energy_W_SF,M_Exported,M_Exported_VA,M_Imported,M_Imported_VA | 0m ago |
| solaredge_status | solaredge_modbus_status | value | 4m ago |
| solaredge_status | solaredge_status | value | 0m ago |
| ret_mikrotik | mikrotik_capsman_registry | .id,bytes,comment,eap-identity,interface,mac-address,packets,rx-rate,rx-signal,ssid,tx-rate,tx-rate-set,uptime | 0m ago |
| ret_mikrotik | mikrotik_capsman_rssi | a52,a53,delock-s1,delock-s10,delock-s2,delock-s3,delock-s4,delock-s5,delock-s7,delock-s8,delock-s9,delock-sz1,delock-sz2,delock-sz3,esp-1,esp-2,esp-4,fire-tv,nous-sz2,nous-sz4,private-hp-r,shelly-1-1,shelly-trv1,solaredge,uhdtv2,vuduo2,xbox-x | 0m ago |
| ret_frostwaechter | frostwaechter | ENERGY.ApparentPower,ENERGY.Current,ENERGY.Factor,ENERGY.Period,ENERGY.Power,ENERGY.ReactivePower,ENERGY.Today,ENERGY.Total,ENERGY.TotalStartTime,ENERGY.Voltage,ENERGY.Yesterday,Time | 0m ago |
| owntracks_retention | owntracks_locations | accuracy,altitude,latitude,longitude | 13m ago |

---

**Summary:**
- Total Retention Policies: 17
- Total Measurements: 72
- Possible Combinations: 1224
- Combinations with Data: 81

---

## Retention Policies (in use)

| Name | Duration | Shard Duration | Replication | Default |
|------|----------|----------------|-------------|---------|
| auto_1d | 672h0m0s | 24h0m0s | 1 |  |
| autogen | 0s | 168h0m0s | 1 | ✓ |
| owntracks_retention | 0s | 168h0m0s | 1 |  |
| ret_awattar | 8784h0m0s | 168h0m0s | 1 |  |
| ret_frostwaechter | 8760h0m0s | 168h0m0s | 1 |  |
| ret_mikrotik | 168h0m0s | 24h0m0s | 1 |  |
| ret_shellytrv | 1440h0m0s | 24h0m0s | 1 |  |
| ret_solarpower | 25h0m0s | 1h0m0s | 1 |  |
| ret_ups | 8784h0m0s | 168h0m0s | 1 |  |
| solaredge_modbus | 8760h0m0s | 24h0m0s | 1 |  |
| solaredge_modbus_energy | 8736h0m0s | 168h0m0s | 1 |  |
| solaredge_status | 17472h0m0s | 168h0m0s | 1 |  |
| switches | 4704h0m0s | 168h0m0s | 1 |  |
| two_weeks | 336h0m0s | 24h0m0s | 1 |  |
| weather | 42000h0m0s | 24h0m0s | 1 |  |

---

## Continuous Queries

| Name | Interval | Source (RP.Measurement) | Destination (RP.Measurement) |
|------|----------|------------------------|------------------------------|
| cq_daily_avg_weather1 | 1d | weather.openweathermap | autogen.daily_avg_weather |
| cq_daily_avg_weather2 | 1d | weather.openweathermap | autogen.daily_avg_weather |
| cq_daily_avg_weather3 | 1d | weather.weather | autogen.daily_avg_weather |
| cq_daily_avg_weather4 | 1d | weather.weather | autogen.daily_avg_weather |
| cq_daily_avg_weather6 | 1d | weather.weather | autogen.daily_avg_weather |
| cq_daily_avg_weather7 | 1d | weather.weather | autogen.daily_avg_weather |
| cq_daily_avg_weather8 | 1d | weather.weather | autogen.daily_avg_weather |
| cq_daily_avg_weather5 | 1d | autogen."shellies/shellymotion2-8CF68108C8E9/info-Temp" | autogen.daily_avg_weather |
| cq_15min_energy | 15m | solaredge_modbus.solaredge_modbus | autogen.q_rev |
| cq_solaredge_1h | 1h | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_1h |
| cq_solaredge_modbus_1h | 1h | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_1h |
| cq_solaredge_modbus_1d | 1d | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_1d |
| cq_solaredge_15m | 15m | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_15m |
| cq_15m_verdichtung | 15m | auto_1d.auto | autogen.auto_15m_verdichtet |
| cq_current_prices_1d_fix | 1d | solaredge_modbus.solaredge_modbus | autogen.current_prices_1d |
| cq_current_prices_1h_v3 | 1h | owntracks_retention.solaredge_modbus | owntracks_retention.current_prices_1h |
| cq_current_prices_15m_v3 | 15m | owntracks_retention.solaredge_modbus | owntracks_retention.current_prices_15m |
| cq_current_prices_1h_v4 | 1h | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_1h |
| cq_current_prices_15m_v4 | 15m | solaredge_modbus.solaredge_modbus | autogen.solaredge_modbus_15m |
- Continuous Queries: 19

### Continuous Query Details

**cq_daily_avg_weather1**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather1 ON "database" BEGIN SELECT mean(tempc) AS "temp-openweathermap" INTO "database".autogen.daily_avg_weather FROM "database".weather.openweathermap GROUP BY time(1d) END
```

**cq_daily_avg_weather2**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather2 ON "database" BEGIN SELECT mean(pressure) AS "press-openweathermap" INTO "database".autogen.daily_avg_weather FROM "database".weather.openweathermap GROUP BY time(1d) END
```

**cq_daily_avg_weather3**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather3 ON "database" BEGIN SELECT mean(DHT22Temperature) AS DHT22Temperature INTO "database".autogen.daily_avg_weather FROM "database".weather.weather GROUP BY time(1d) END
```

**cq_daily_avg_weather4**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather4 ON "database" BEGIN SELECT mean(BMP180Temperature) AS BMP180Temperature INTO "database".autogen.daily_avg_weather FROM "database".weather.weather GROUP BY time(1d) END
```

**cq_daily_avg_weather6**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather6 ON "database" BEGIN SELECT mean(BMP180Pressure) AS BMP180Pressure INTO "database".autogen.daily_avg_weather FROM "database".weather.weather GROUP BY time(1d) END
```

**cq_daily_avg_weather7**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather7 ON "database" BEGIN SELECT mean(DHT22Humidity) AS DHT22Humidity INTO "database".autogen.daily_avg_weather FROM "database".weather.weather GROUP BY time(1d) END
```

**cq_daily_avg_weather8**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather8 ON "database" BEGIN SELECT mean(BH1750Lux) AS BH1750Lux INTO "database".autogen.daily_avg_weather FROM "database".weather.weather GROUP BY time(1d) END
```

**cq_daily_avg_weather5**
```sql
CREATE CONTINUOUS QUERY cq_daily_avg_weather5 ON "database" BEGIN SELECT mean(value) AS Innen INTO "database".autogen.daily_avg_weather FROM "database".autogen."shellies/shellymotion2-8CF68108C8E9/info-Temp" GROUP BY time(1d) END
```

**cq_15min_energy**
```sql
CREATE CONTINUOUS QUERY cq_15min_energy ON "database" BEGIN SELECT (mean(M_AC_Power) * 0.250) AS quaterly INTO "database".autogen.q_rev FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(15m) END
```

**cq_solaredge_1h**
```sql
CREATE CONTINUOUS QUERY cq_solaredge_1h ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS mean_C_SunSpec_DID, mean("C_SunSpec_Länge") AS "mean_C_SunSpec_Länge", mean(I_AC_Energie_WH) AS mean_I_AC_Energie_WH, mean(I_AC_Energie_WH_SF) AS mean_I_AC_Energie_WH_SF, mean(I_AC_Frequenz) AS mean_I_AC_Frequenz, mean(I_AC_Frequenz_SF) AS mean_I_AC_Frequenz_SF, mean(I_AC_Leistung) AS mean_I_AC_Leistung, mean(I_AC_Leistung_SF) AS mean_I_AC_Leistung_SF, mean(I_AC_PF) AS mean_I_AC_PF, mean(I_AC_PF_SF) AS mean_I_AC_PF_SF, mean(I_AC_SpannungAB) AS mean_I_AC_SpannungAB, mean(I_AC_SpannungAN) AS mean_I_AC_SpannungAN, mean(I_AC_SpannungBC) AS mean_I_AC_SpannungBC, mean(I_AC_SpannungBN) AS mean_I_AC_SpannungBN, mean(I_AC_SpannungCA) AS mean_I_AC_SpannungCA, mean(I_AC_SpannungCN) AS mean_I_AC_SpannungCN, mean(I_AC_Spannung_SF) AS mean_I_AC_Spannung_SF, mean(I_AC_Strom) AS mean_I_AC_Strom, mean(I_AC_StromA) AS mean_I_AC_StromA, mean(I_AC_StromB) AS mean_I_AC_StromB, mean(I_AC_StromC) AS mean_I_AC_StromC, mean(I_AC_Strom_SF) AS mean_I_AC_Strom_SF, mean(I_AC_VA) AS mean_I_AC_VA, mean(I_AC_VAR) AS mean_I_AC_VAR, mean(I_AC_VAR_SF) AS mean_I_AC_VAR_SF, mean(I_AC_VA_SF) AS mean_I_AC_VA_SF, mean(I_DC_Leistung) AS mean_I_DC_Leistung, mean(I_DC_Leistung_SF) AS mean_I_DC_Leistung_SF, mean(I_DC_Spannung) AS mean_I_DC_Spannung, mean(I_DC_Spannung_SF) AS mean_I_DC_Spannung_SF, mean(I_DC_Strom) AS mean_I_DC_Strom, mean(I_DC_Strom_SF) AS mean_I_DC_Strom_SF, mean(I_Status) AS mean_I_Status, mean(I_Status_Anbieter) AS mean_I_Status_Anbieter, mean("I_Temp_Kühler") AS "mean_I_Temp_Kühler", mean(I_Temp_SF) AS mean_I_Temp_SF, mean(M_AC_Power) AS mean_M_AC_Power, mean(M_AC_Power_A) AS mean_M_AC_Power_A, mean(M_AC_Power_B) AS mean_M_AC_Power_B, mean(M_AC_Power_C) AS mean_M_AC_Power_C, mean(M_AC_Power_SF) AS mean_M_AC_Power_SF, mean(SOE) AS mean_SOE, mean(SOH) AS mean_SOH, mean(available_energy) AS mean_available_energy, mean(avg) AS mean_avg, mean(avg_temp) AS mean_avg_temp, mean(hourly) AS mean_hourly, mean(hourly_price) AS mean_hourly_price, mean(inst_charge_power) AS mean_inst_charge_power, mean(inst_current) AS mean_inst_current, mean(inst_discharge_power) AS mean_inst_discharge_power, mean(inst_power) AS mean_inst_power, mean(inst_voltage) AS mean_inst_voltage, mean(max_energy) AS mean_max_energy, mean(max_temp) AS mean_max_temp, mean(status) AS mean_status INTO "database".autogen.solaredge_modbus_1h FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(1h) END
```

**cq_solaredge_modbus_1h**
```sql
CREATE CONTINUOUS QUERY cq_solaredge_modbus_1h ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS C_SunSpec_DID, mean("C_SunSpec_Länge") AS "C_SunSpec_Länge", mean(I_AC_Energie_WH) AS I_AC_Energie_WH, mean(I_AC_Energie_WH_SF) AS I_AC_Energie_WH_SF, mean(I_AC_Frequenz) AS I_AC_Frequenz, mean(I_AC_Frequenz_SF) AS I_AC_Frequenz_SF, mean(I_AC_Leistung) AS I_AC_Leistung, mean(I_AC_Leistung_SF) AS I_AC_Leistung_SF, mean(I_AC_PF) AS I_AC_PF, mean(I_AC_PF_SF) AS I_AC_PF_SF, mean(I_AC_SpannungAB) AS I_AC_SpannungAB, mean(I_AC_SpannungAN) AS I_AC_SpannungAN, mean(I_AC_SpannungBC) AS I_AC_SpannungBC, mean(I_AC_SpannungBN) AS I_AC_SpannungBN, mean(I_AC_SpannungCA) AS I_AC_SpannungCA, mean(I_AC_SpannungCN) AS I_AC_SpannungCN, mean(I_AC_Spannung_SF) AS I_AC_Spannung_SF, mean(I_AC_Strom) AS I_AC_Strom, mean(I_AC_StromA) AS I_AC_StromA, mean(I_AC_StromB) AS I_AC_StromB, mean(I_AC_StromC) AS I_AC_StromC, mean(I_AC_Strom_SF) AS I_AC_Strom_SF, mean(I_AC_VA) AS I_AC_VA, mean(I_AC_VAR) AS I_AC_VAR, mean(I_AC_VAR_SF) AS I_AC_VAR_SF, mean(I_AC_VA_SF) AS I_AC_VA_SF, mean(I_DC_Leistung) AS I_DC_Leistung, mean(I_DC_Leistung_SF) AS I_DC_Leistung_SF, mean(I_DC_Spannung) AS I_DC_Spannung, mean(I_DC_Spannung_SF) AS I_DC_Spannung_SF, mean(I_DC_Strom) AS I_DC_Strom, mean(I_DC_Strom_SF) AS I_DC_Strom_SF, mean(I_Status) AS I_Status, mean(I_Status_Anbieter) AS I_Status_Anbieter, mean("I_Temp_Kühler") AS "I_Temp_Kühler", mean(I_Temp_SF) AS I_Temp_SF, mean(M_AC_Power) AS M_AC_Power, mean(M_AC_Power_A) AS M_AC_Power_A, mean(M_AC_Power_B) AS M_AC_Power_B, mean(M_AC_Power_C) AS M_AC_Power_C, mean(M_AC_Power_SF) AS M_AC_Power_SF, mean(SOE) AS SOE, mean(SOH) AS SOH, mean(available_energy) AS available_energy, mean(avg_temp) AS avg_temp, mean(hourly) AS hourly, mean(hourly_price) AS hourly_price, mean(inst_charge_power) AS inst_charge_power, mean(inst_current) AS inst_current, mean(inst_discharge_power) AS inst_discharge_power, mean(inst_power) AS inst_power, mean(inst_voltage) AS inst_voltage, mean(max_energy) AS max_energy, mean(max_temp) AS max_temp, mean(status) AS status INTO "database".autogen.solaredge_modbus_1h FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(1h) END
```

**cq_solaredge_modbus_1d**
```sql
CREATE CONTINUOUS QUERY cq_solaredge_modbus_1d ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS C_SunSpec_DID, mean("C_SunSpec_Länge") AS "C_SunSpec_Länge", mean(I_AC_Energie_WH) AS I_AC_Energie_WH, mean(I_AC_Energie_WH_SF) AS I_AC_Energie_WH_SF, mean(I_AC_Frequenz) AS I_AC_Frequenz, mean(I_AC_Frequenz_SF) AS I_AC_Frequenz_SF, mean(I_AC_Leistung) AS I_AC_Leistung, mean(I_AC_Leistung_SF) AS I_AC_Leistung_SF, mean(I_AC_PF) AS I_AC_PF, mean(I_AC_PF_SF) AS I_AC_PF_SF, mean(I_AC_SpannungAB) AS I_AC_SpannungAB, mean(I_AC_SpannungAN) AS I_AC_SpannungAN, mean(I_AC_SpannungBC) AS I_AC_SpannungBC, mean(I_AC_SpannungBN) AS I_AC_SpannungBN, mean(I_AC_SpannungCA) AS I_AC_SpannungCA, mean(I_AC_SpannungCN) AS I_AC_SpannungCN, mean(I_AC_Spannung_SF) AS I_AC_Spannung_SF, mean(I_AC_Strom) AS I_AC_Strom, mean(I_AC_StromA) AS I_AC_StromA, mean(I_AC_StromB) AS I_AC_StromB, mean(I_AC_StromC) AS I_AC_StromC, mean(I_AC_Strom_SF) AS I_AC_Strom_SF, mean(I_AC_VA) AS I_AC_VA, mean(I_AC_VAR) AS I_AC_VAR, mean(I_AC_VAR_SF) AS I_AC_VAR_SF, mean(I_AC_VA_SF) AS I_AC_VA_SF, mean(I_DC_Leistung) AS I_DC_Leistung, mean(I_DC_Leistung_SF) AS I_DC_Leistung_SF, mean(I_DC_Spannung) AS I_DC_Spannung, mean(I_DC_Spannung_SF) AS I_DC_Spannung_SF, mean(I_DC_Strom) AS I_DC_Strom, mean(I_DC_Strom_SF) AS I_DC_Strom_SF, mean(I_Status) AS I_Status, mean(I_Status_Anbieter) AS I_Status_Anbieter, mean("I_Temp_Kühler") AS "I_Temp_Kühler", mean(I_Temp_SF) AS I_Temp_SF, mean(M_AC_Power) AS M_AC_Power, mean(M_AC_Power_A) AS M_AC_Power_A, mean(M_AC_Power_B) AS M_AC_Power_B, mean(M_AC_Power_C) AS M_AC_Power_C, mean(M_AC_Power_SF) AS M_AC_Power_SF, mean(SOE) AS SOE, mean(SOH) AS SOH, mean(available_energy) AS available_energy, mean(avg_temp) AS avg_temp, mean(hourly) AS hourly, mean(hourly_price) AS hourly_price, mean(inst_charge_power) AS inst_charge_power, mean(inst_current) AS inst_current, mean(inst_discharge_power) AS inst_discharge_power, mean(inst_power) AS inst_power, mean(inst_voltage) AS inst_voltage, mean(max_energy) AS max_energy, mean(max_temp) AS max_temp, mean(status) AS status INTO "database".autogen.solaredge_modbus_1d FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(1d) END
```

**cq_solaredge_15m**
```sql
CREATE CONTINUOUS QUERY cq_solaredge_15m ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS mean_C_SunSpec_DID, mean("C_SunSpec_Länge") AS "mean_C_SunSpec_Länge", mean(I_AC_Energie_WH) AS mean_I_AC_Energie_WH, mean(I_AC_Energie_WH_SF) AS mean_I_AC_Energie_WH_SF, mean(I_AC_Frequenz) AS mean_I_AC_Frequenz, mean(I_AC_Frequenz_SF) AS mean_I_AC_Frequenz_SF, mean(I_AC_Leistung) AS mean_I_AC_Leistung, mean(I_AC_Leistung_SF) AS mean_I_AC_Leistung_SF, mean(I_AC_PF) AS mean_I_AC_PF, mean(I_AC_PF_SF) AS mean_I_AC_PF_SF, mean(I_AC_SpannungAB) AS mean_I_AC_SpannungAB, mean(I_AC_SpannungAN) AS mean_I_AC_SpannungAN, mean(I_AC_SpannungBC) AS mean_I_AC_SpannungBC, mean(I_AC_SpannungBN) AS mean_I_AC_SpannungBN, mean(I_AC_SpannungCA) AS mean_I_AC_SpannungCA, mean(I_AC_SpannungCN) AS mean_I_AC_SpannungCN, mean(I_AC_Spannung_SF) AS mean_I_AC_Spannung_SF, mean(I_AC_Strom) AS mean_I_AC_Strom, mean(I_AC_StromA) AS mean_I_AC_StromA, mean(I_AC_StromB) AS mean_I_AC_StromB, mean(I_AC_StromC) AS mean_I_AC_StromC, mean(I_AC_Strom_SF) AS mean_I_AC_Strom_SF, mean(I_AC_VA) AS mean_I_AC_VA, mean(I_AC_VAR) AS mean_I_AC_VAR, mean(I_AC_VAR_SF) AS mean_I_AC_VAR_SF, mean(I_AC_VA_SF) AS mean_I_AC_VA_SF, mean(I_DC_Leistung) AS mean_I_DC_Leistung, mean(I_DC_Leistung_SF) AS mean_I_DC_Leistung_SF, mean(I_DC_Spannung) AS mean_I_DC_Spannung, mean(I_DC_Spannung_SF) AS mean_I_DC_Spannung_SF, mean(I_DC_Strom) AS mean_I_DC_Strom, mean(I_DC_Strom_SF) AS mean_I_DC_Strom_SF, mean(I_Status) AS mean_I_Status, mean(I_Status_Anbieter) AS mean_I_Status_Anbieter, mean("I_Temp_Kühler") AS "mean_I_Temp_Kühler", mean(I_Temp_SF) AS mean_I_Temp_SF, mean(M_AC_Power) AS mean_M_AC_Power, mean(M_AC_Power_A) AS mean_M_AC_Power_A, mean(M_AC_Power_B) AS mean_M_AC_Power_B, mean(M_AC_Power_C) AS mean_M_AC_Power_C, mean(M_AC_Power_SF) AS mean_M_AC_Power_SF, mean(SOE) AS mean_SOE, mean(SOH) AS mean_SOH, mean(available_energy) AS mean_available_energy, mean(avg) AS mean_avg, mean(avg_temp) AS mean_avg_temp, mean(hourly) AS mean_hourly, mean(hourly_price) AS mean_hourly_price, mean(inst_charge_power) AS mean_inst_charge_power, mean(inst_current) AS mean_inst_current, mean(inst_discharge_power) AS mean_inst_discharge_power, mean(inst_power) AS mean_inst_power, mean(inst_voltage) AS mean_inst_voltage, mean(max_energy) AS mean_max_energy, mean(max_temp) AS mean_max_temp, mean(status) AS mean_status INTO "database".autogen.solaredge_modbus_15m FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(15m) END
```

**cq_15m_verdichtung**
```sql
CREATE CONTINUOUS QUERY cq_15m_verdichtung ON "database" BEGIN SELECT mean(ApparentPower) AS avg_apparent_power, mean(Current) AS avg_current, mean(Voltage) AS avg_voltage, mean(Power) AS avg_power, sum(Period) AS total_period, mean(Period) AS avg_period INTO "database".autogen.auto_15m_verdichtet FROM "database".auto_1d.auto GROUP BY time(15m) END
```

**cq_current_prices_1d_fix**
```sql
CREATE CONTINUOUS QUERY cq_current_prices_1d_fix ON "database" BEGIN SELECT mean(current) AS current_price INTO "database".autogen.current_prices_1d FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(1d) END
```

**cq_current_prices_1h_v3**
```sql
CREATE CONTINUOUS QUERY cq_current_prices_1h_v3 ON "database" BEGIN SELECT mean(current) AS current_price INTO "database".owntracks_retention.current_prices_1h FROM "database".owntracks_retention.solaredge_modbus GROUP BY time(1h) END
```

**cq_current_prices_15m_v3**
```sql
CREATE CONTINUOUS QUERY cq_current_prices_15m_v3 ON "database" BEGIN SELECT mean(current) AS current_price INTO "database".owntracks_retention.current_prices_15m FROM "database".owntracks_retention.solaredge_modbus GROUP BY time(15m) END
```

**cq_current_prices_1h_v4**
```sql
CREATE CONTINUOUS QUERY cq_current_prices_1h_v4 ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS C_SunSpec_DID, mean("C_SunSpec_Länge") AS "C_SunSpec_Länge", mean(I_AC_Energie_WH) AS I_AC_Energie_WH, mean(I_AC_Leistung) AS I_AC_Leistung, mean(I_AC_Leistung_SF) AS I_AC_Leistung_SF, mean(I_AC_Spannung_AB) AS I_AC_Spannung_AB, mean(I_AC_Spannung_BC) AS I_AC_Spannung_BC, mean(I_AC_Spannung_CA) AS I_AC_Spannung_CA, mean(I_AC_Spannung_SF) AS I_AC_Spannung_SF, mean(I_AC_Strom_A) AS I_AC_Strom_A, mean(I_AC_Strom_B) AS I_AC_Strom_B, mean(I_AC_Strom_C) AS I_AC_Strom_C, mean(I_AC_Strom_SF) AS I_AC_Strom_SF, mean(I_DC_Leistung) AS I_DC_Leistung, mean(I_DC_Leistung_SF) AS I_DC_Leistung_SF, mean(SOE) AS SOE, mean(available_energy) AS available_energy, mean(current) AS current, mean(current) AS mean_current, mean(hourly_price) AS hourly_price, mean(inst_charge_power) AS inst_charge_power, mean(inst_discharge_power) AS inst_discharge_power, mean(power_control) AS power_control, mean(status) AS status INTO "database".autogen.solaredge_modbus_1h FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(1h) END
```

**cq_current_prices_15m_v4**
```sql
CREATE CONTINUOUS QUERY cq_current_prices_15m_v4 ON "database" BEGIN SELECT mean(C_SunSpec_DID) AS C_SunSpec_DID, mean("C_SunSpec_Länge") AS "C_SunSpec_Länge", mean(I_AC_Energie_WH) AS I_AC_Energie_WH, mean(I_AC_Leistung) AS I_AC_Leistung, mean(I_AC_Leistung_SF) AS I_AC_Leistung_SF, mean(I_AC_Spannung_AB) AS I_AC_Spannung_AB, mean(I_AC_Spannung_BC) AS I_AC_Spannung_BC, mean(I_AC_Spannung_CA) AS I_AC_Spannung_CA, mean(I_AC_Spannung_SF) AS I_AC_Spannung_SF, mean(I_AC_Strom_A) AS I_AC_Strom_A, mean(I_AC_Strom_B) AS I_AC_Strom_B, mean(I_AC_Strom_C) AS I_AC_Strom_C, mean(I_AC_Strom_SF) AS I_AC_Strom_SF, mean(I_DC_Leistung) AS I_DC_Leistung, mean(I_DC_Leistung_SF) AS I_DC_Leistung_SF, mean(SOE) AS SOE, mean(available_energy) AS available_energy, mean(current) AS current, mean(current) AS mean_current, mean(hourly_price) AS hourly_price, mean(inst_charge_power) AS inst_charge_power, mean(inst_discharge_power) AS inst_discharge_power, mean(power_control) AS power_control, mean(status) AS status INTO "database".autogen.solaredge_modbus_15m FROM "database".solaredge_modbus.solaredge_modbus GROUP BY time(15m) END
```

