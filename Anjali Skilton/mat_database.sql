CREATE TABLE final_data as
select
	alb.date,alb.volume as alb_volume,
	apd.volume as apd_volume,
	dd.volume as dd_volume,
	ecl.volume as ecl_volume,
	fcx.volume as fcx_volume,
	lyb.volume as lyb_volume,
	nem.volume as nem_volume,
	ppg.volume as ppg_volume,
	scco.volume as scco_volume,
	shw.volume as shw_volume,
	alb.high as alb_high,
	apd.high as apd_high,
	dd.high as dd_high,
	ecl.high as ecl_high,
	fcx.high as fcx_high,
	lyb.high as lyb_high,
	nem.high as nem_high,
	ppg.high as ppg_high,
	scco.high as scco_high,
	shw.high as shw_high,
	alb.low as alb_low,
	apd.low as apd_low,
	dd.low as dd_low,
	ecl.low as ecl_low,
	fcx.low as fcx_low,
	lyb.low as lyb_low,
	nem.low as nem_low,
	ppg.low as ppg_low,
	scco.low as scco_low,
	shw.low as shw_low
	
	from alb
	join apd on alb.date=apd.date
	join dd on alb.date=dd.date
	join ecl on alb.date=ecl.date
	join fcx on alb.date=fcx.date
	join lyb on alb.date=lyb.date
	join nem on alb.date=nem.date
	join ppg on alb.date=ppg.date
	join scco on alb.date=scco.date
	join shw on alb.date=shw.date