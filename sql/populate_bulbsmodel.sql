-- =CONCAT("insert into `BulbsModel` (`bulbId`, `modelId`) values (select id from `Bulb` where descr = '";H10;"' and `partId` = (select id from `Part` where name = '";$H$2;"'), select id from `Model` where trim(name) = trim('";D10;" ";SE(F10="";"";F10);"') and year = ";B10;" and `makeId` = (select id from `Make` where name = '";C10;"'))")