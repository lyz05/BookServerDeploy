TYPE=VIEW
query=select `BookDB1`.`Borrow`.`readerno` AS `readerno`,`BookDB1`.`Reader`.`readername` AS `readername`,`BookDB1`.`Borrow`.`bookno` AS `bookno`,`BookDB1`.`Book`.`bookname` AS `bookname`,`BookDB1`.`Book`.`author` AS `author`,`BookDB1`.`Book`.`press` AS `press`,`BookDB1`.`Borrow`.`borrowdate` AS `borrowdate`,`BookDB1`.`Borrow`.`shoulddate` AS `shoulddate`,`BookDB1`.`Borrow`.`returndate` AS `returndate` from `BookDB1`.`Borrow` join `BookDB1`.`Book` join `BookDB1`.`Reader` where ((`BookDB1`.`Borrow`.`bookno` = `BookDB1`.`Book`.`bookno`) and (`BookDB1`.`Borrow`.`readerno` = `BookDB1`.`Reader`.`readerno`))
md5=509cf6eb7c1ef76578a90b7e224e9764
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2020-02-19 13:10:16
create-version=1
source=select Borrow.readerno,readername,Borrow.bookno,bookname,author,press,borrowdate,shoulddate,returndate from Borrow,Book,Reader where Borrow.bookno=Book.bookno and Borrow.readerno=Reader.readerno
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `BookDB1`.`Borrow`.`readerno` AS `readerno`,`BookDB1`.`Reader`.`readername` AS `readername`,`BookDB1`.`Borrow`.`bookno` AS `bookno`,`BookDB1`.`Book`.`bookname` AS `bookname`,`BookDB1`.`Book`.`author` AS `author`,`BookDB1`.`Book`.`press` AS `press`,`BookDB1`.`Borrow`.`borrowdate` AS `borrowdate`,`BookDB1`.`Borrow`.`shoulddate` AS `shoulddate`,`BookDB1`.`Borrow`.`returndate` AS `returndate` from `BookDB1`.`Borrow` join `BookDB1`.`Book` join `BookDB1`.`Reader` where ((`BookDB1`.`Borrow`.`bookno` = `BookDB1`.`Book`.`bookno`) and (`BookDB1`.`Borrow`.`readerno` = `BookDB1`.`Reader`.`readerno`))
