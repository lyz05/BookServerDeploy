TYPE=VIEW
query=select `BookDB1`.`Reader`.`readerno` AS `readerno`,`BookDB1`.`Reader`.`readername` AS `readername`,`BookDB1`.`Reader`.`sex` AS `sex`,`BookDB1`.`Reader`.`identitycard` AS `identitycard`,`BookDB1`.`Reader`.`workunit` AS `workunit`,count(`BookDB1`.`Borrow`.`readerno`) AS `totalborrownum`,(count(`BookDB1`.`Borrow`.`readerno`) - count(`BookDB1`.`Borrow`.`returndate`)) AS `notreturnnum` from ((`BookDB1`.`Reader` left join `BookDB1`.`Borrow` on((`BookDB1`.`Borrow`.`readerno` = `BookDB1`.`Reader`.`readerno`))) left join `BookDB1`.`Book` on((`BookDB1`.`Borrow`.`bookno` = `BookDB1`.`Book`.`bookno`))) group by `BookDB1`.`Reader`.`readerno`,`BookDB1`.`Borrow`.`readerno`,`BookDB1`.`Reader`.`readername`,`BookDB1`.`Reader`.`sex`,`BookDB1`.`Reader`.`identitycard`,`BookDB1`.`Reader`.`workunit`
md5=b92d406fcee7725d9cbdfa3cc6757092
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-02-19 13:10:17
create-version=1
source=select Reader.readerno,readername,sex,identitycard,workunit,count(Borrow.readerno) totalborrownum,count(Borrow.readerno)-count(Borrow.returndate) notreturnnum from Borrow\nright join Reader on Borrow.readerno=Reader.readerno\nleft join Book on Borrow.bookno=Book.bookno \ngroup by Reader.readerno,Borrow.readerno,readername,sex,identitycard,workUnit
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `BookDB1`.`Reader`.`readerno` AS `readerno`,`BookDB1`.`Reader`.`readername` AS `readername`,`BookDB1`.`Reader`.`sex` AS `sex`,`BookDB1`.`Reader`.`identitycard` AS `identitycard`,`BookDB1`.`Reader`.`workunit` AS `workunit`,count(`BookDB1`.`Borrow`.`readerno`) AS `totalborrownum`,(count(`BookDB1`.`Borrow`.`readerno`) - count(`BookDB1`.`Borrow`.`returndate`)) AS `notreturnnum` from ((`BookDB1`.`Reader` left join `BookDB1`.`Borrow` on((`BookDB1`.`Borrow`.`readerno` = `BookDB1`.`Reader`.`readerno`))) left join `BookDB1`.`Book` on((`BookDB1`.`Borrow`.`bookno` = `BookDB1`.`Book`.`bookno`))) group by `BookDB1`.`Reader`.`readerno`,`BookDB1`.`Borrow`.`readerno`,`BookDB1`.`Reader`.`readername`,`BookDB1`.`Reader`.`sex`,`BookDB1`.`Reader`.`identitycard`,`BookDB1`.`Reader`.`workunit`
