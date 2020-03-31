TYPE=VIEW
query=select `BookDB1`.`Book`.`bookno` AS `bookno`,`BookDB1`.`Book`.`bookname` AS `bookname`,`BookDB1`.`Book`.`author` AS `author`,`BookDB1`.`Book`.`press` AS `press`,`BookDB1`.`Book`.`publishdate` AS `publishdate`,`BookDB1`.`Book`.`shopnum` AS `shopnum`,(`BookDB1`.`Book`.`shopnum` - count(`ViewBorrownotReturn`.`bookno`)) AS `curnum` from ((`BookDB1`.`Book` left join `BookDB1`.`ViewBorrownotReturn` on((`ViewBorrownotReturn`.`bookno` = `BookDB1`.`Book`.`bookno`))) left join `BookDB1`.`Reader` on((`ViewBorrownotReturn`.`readerno` = `BookDB1`.`Reader`.`readerno`))) group by `BookDB1`.`Book`.`bookno`,`BookDB1`.`Book`.`bookname`,`BookDB1`.`Book`.`author`,`BookDB1`.`Book`.`press`,`BookDB1`.`Book`.`publishdate`,`BookDB1`.`Book`.`shopnum`
md5=fec6af449b6ce109b7965b473cc68bd9
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-02-19 13:10:16
create-version=1
source=select Book.bookno,bookname,author,press,publishdate,shopnum,shopnum-count(ViewBorrownotReturn.bookno) curnum from ViewBorrownotReturn\nright join Book on ViewBorrownotReturn.bookno=Book.bookno \nleft join Reader on ViewBorrownotReturn.readerno=Reader.readerno\ngroup by Book.bookno,bookname,author,press,publishdate,shopNum
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `BookDB1`.`Book`.`bookno` AS `bookno`,`BookDB1`.`Book`.`bookname` AS `bookname`,`BookDB1`.`Book`.`author` AS `author`,`BookDB1`.`Book`.`press` AS `press`,`BookDB1`.`Book`.`publishdate` AS `publishdate`,`BookDB1`.`Book`.`shopnum` AS `shopnum`,(`BookDB1`.`Book`.`shopnum` - count(`ViewBorrownotReturn`.`bookno`)) AS `curnum` from ((`BookDB1`.`Book` left join `BookDB1`.`ViewBorrownotReturn` on((`ViewBorrownotReturn`.`bookno` = `BookDB1`.`Book`.`bookno`))) left join `BookDB1`.`Reader` on((`ViewBorrownotReturn`.`readerno` = `BookDB1`.`Reader`.`readerno`))) group by `BookDB1`.`Book`.`bookno`,`BookDB1`.`Book`.`bookname`,`BookDB1`.`Book`.`author`,`BookDB1`.`Book`.`press`,`BookDB1`.`Book`.`publishdate`,`BookDB1`.`Book`.`shopnum`
