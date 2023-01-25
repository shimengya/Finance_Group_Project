CREATE TABLE final_data_high_low as
select
    acn.date,acn.volume as acn_volume,
    adbe.volume as adbe_volume,
    amd.volume as amd_volume,
    crm.volume as crm_volume,
    ibm.volume as ibm_volume,
    intc.volume as intc_volume,
    intu.volume as intu_volume,
    nflx.volume as nflx_volume,
    sony.volume as sony_volume,
    txn.volume as txn_volume,
    acn.high as acn_high,
    adbe.high as adbe_high,
    amd.high as amd_high,
    crm.high as crm_high,
    ibm.high as ibm_high,
    intc.high as intc_high,
    intu.high as intu_high,
    nflx.high as nflx_high,
    sony.high as sony_high,
    txn.high as txn_high,
    acn.low as acn_low,
    adbe.low as adbe_low,
    amd.low as amd_low,
    crm.low as crm_low,
    ibm.low as ibm_low,
    intc.low as intc_low,
    intu.low as intu_low,
    nflx.low as nflx_low,
    sony.low as sony_low,
    txn.low as txn_low
    from acn
    join adbe on acn.date=adbe.date
    join amd on acn.date=amd.date
    join crm on acn.date=crm.date
    join ibm on acn.date=ibm.date
    join intc on acn.date=intc.date
    join intu on acn.date=intu.date
    join nflx on acn.date=nflx.date
    join sony on acn.date=sony.date
    join txn on acn.date=txn.date
	
select * from final_data_high_low
limit 5