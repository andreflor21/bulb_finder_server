insert into bulbs (descr, part_id) values ('880', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('H1', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('H7', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('H11', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('9006', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('PSX24', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('9004', (select id from parts where name = 'High Beam and Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9005', (select id from parts where name = 'High Beam and Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9007', (select id from parts where name = 'High Beam and Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H7', (select id from parts where name = 'High Beam and Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H1', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H7', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H11', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9004', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9005', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9006', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('9007', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H1', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('H7', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('H11', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('9004', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('9005', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('880', (select id from parts where name = 'High Beam Headlight'));
insert into bulbs (descr, part_id) values ('H4', (select id from parts where name = 'Front Fog Light'));
insert into bulbs (descr, part_id) values ('H4', (select id from parts where name = 'High Beam and Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H4', (select id from parts where name = 'Low Beam Headlight'));
insert into bulbs (descr, part_id) values ('H4', (select id from parts where name = 'High Beam Headlight'));
update bulbs set url_platinum='https://www.haizerusa.com/product-page/haizer-led-h1' , img_platinum='https://static.wixstatic.com/media/786e27_4a6e83c0536f414fa739da7a23e0fe8b~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_4a6e83c0536f414fa739da7a23e0fe8b~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h1' , img_m_series='https://static.wixstatic.com/media/786e27_a6e8cd74f85347f98d53ba48e1282fde~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_a6e8cd74f85347f98d53ba48e1282fde~mv2.jpg' where upper(descr) = upper('h1');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/haizer-led-h4-9003' , img_platinum='https://static.wixstatic.com/media/786e27_7fa297936458452095b40e39935b6dcd~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_7fa297936458452095b40e39935b6dcd~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h4' , img_m_series='https://static.wixstatic.com/media/786e27_f3094f7a50b643fd957c53ffaddd9cfd~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_f3094f7a50b643fd957c53ffaddd9cfd~mv2.jpg' where upper(descr) = upper('h4');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/haizer-led-h7' , img_platinum='https://static.wixstatic.com/media/786e27_b86bce2a9dfc4da7b899c6575b8fea91~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_b86bce2a9dfc4da7b899c6575b8fea91~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h7-1' , img_m_series='https://static.wixstatic.com/media/786e27_21f5b0631b39426e953525bfd2a13cbf~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_21f5b0631b39426e953525bfd2a13cbf~mv2.jpg' where upper(descr) = upper('h7');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/c%C3%B3pia-de-haizer-led-h11' , img_platinum='https://static.wixstatic.com/media/786e27_80cb0ef2cef14a438979a25b33e7708f~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_80cb0ef2cef14a438979a25b33e7708f~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h7' , img_m_series='https://static.wixstatic.com/media/786e27_c2c8a3a5be4c4d7a81f652c4c49cbec9~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_c2c8a3a5be4c4d7a81f652c4c49cbec9~mv2.jpg' where upper(descr) = upper('h11');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/platinum-haizer-led-h13' , img_platinum='https://static.wixstatic.com/media/786e27_d7da9a63ef014744815c0c0c3854b332~mv2.png/v1/fill/w_283,h_270,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/786e27_d7da9a63ef014744815c0c0c3854b332~mv2.png' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h13' , img_m_series='https://static.wixstatic.com/media/786e27_09ceabe7640a48188ecd50a1a97997db~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_09ceabe7640a48188ecd50a1a97997db~mv2.jpg' where upper(descr) = upper('h13');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/c%C3%B3pia-de-haizer-led-hb1-9004' , img_platinum='https://static.wixstatic.com/media/786e27_18636b5b70a44ad1b46012c379e8a75c~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_18636b5b70a44ad1b46012c379e8a75c~mv2.jpg' , url_m_series='' , img_m_series='' where upper(descr) = upper('9004');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/haizer-led-hb3-9005' , img_platinum='https://static.wixstatic.com/media/786e27_ee3eec448939494fb7d26aca7ed591dd~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_ee3eec448939494fb7d26aca7ed591dd~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-9005' , img_m_series='https://static.wixstatic.com/media/786e27_7b486561c65547658f0e3af42450560d~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_7b486561c65547658f0e3af42450560d~mv2.jpg' where upper(descr) = upper('9005');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/c%C3%B3pia-de-haizer-led-hb4-9006' , img_platinum='https://static.wixstatic.com/media/786e27_0fb94c6eead84e5fbbbf315464c0845d~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_0fb94c6eead84e5fbbbf315464c0845d~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/c%C3%B3pia-de-m-series-led-9005' , img_m_series='https://static.wixstatic.com/media/786e27_dd640e7b2abf4ed3a14b7088935cf5dc~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_dd640e7b2abf4ed3a14b7088935cf5dc~mv2.jpg' where upper(descr) = upper('9006');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/platinum-series-led-hb1-9007' , img_platinum='https://static.wixstatic.com/media/786e27_18636b5b70a44ad1b46012c379e8a75c~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_18636b5b70a44ad1b46012c379e8a75c~mv2.jpg' , url_m_series='' , img_m_series='' where upper(descr) = upper('9007');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/platinum-series-led-880' , img_platinum='https://static.wixstatic.com/media/786e27_420c670724fe4179b04eb985e13f61b5~mv2.png/v1/fill/w_283,h_270,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/786e27_420c670724fe4179b04eb985e13f61b5~mv2.png' , url_m_series='' , img_m_series='' where upper(descr) = upper('880');
update bulbs set url_platinum='https://www.haizerusa.com/product-page/m-series-led-psx24' , img_platinum='https://static.wixstatic.com/media/786e27_f1db033a7a624b57b50bbff3fc191550~mv2.png/v1/fill/w_283,h_270,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/786e27_f1db033a7a624b57b50bbff3fc191550~mv2.png' , url_m_series='' , img_m_series='' where upper(descr) = upper('PSX24');
insert into bulbs (descr, part_id) values ('H13', (select id from parts where name = 'High Beam and Low Beam Headlight'));
update bulbs set url_platinum='https://www.haizerusa.com/product-page/platinum-haizer-led-h13' , img_platinum='https://static.wixstatic.com/media/786e27_d7da9a63ef014744815c0c0c3854b332~mv2.png/v1/fill/w_283,h_270,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/786e27_d7da9a63ef014744815c0c0c3854b332~mv2.png' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h13' , img_m_series='https://static.wixstatic.com/media/786e27_09ceabe7640a48188ecd50a1a97997db~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_09ceabe7640a48188ecd50a1a97997db~mv2.jpg' where upper(descr) = upper('h13');
insert into bulbs (descr, part_id) values ('H11', (select id from parts where name = 'High Beam and Low Beam Headlight'));
update bulbs set url_platinum='https://www.haizerusa.com/product-page/c%C3%B3pia-de-haizer-led-h11' , img_platinum='https://static.wixstatic.com/media/786e27_80cb0ef2cef14a438979a25b33e7708f~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_80cb0ef2cef14a438979a25b33e7708f~mv2.jpg' , url_m_series='https://www.haizerusa.com/product-page/m-series-led-h7' , img_m_series='https://static.wixstatic.com/media/786e27_c2c8a3a5be4c4d7a81f652c4c49cbec9~mv2.jpg/v1/fill/w_283,h_270,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/786e27_c2c8a3a5be4c4d7a81f652c4c49cbec9~mv2.jpg' where upper(descr) = upper('h11');