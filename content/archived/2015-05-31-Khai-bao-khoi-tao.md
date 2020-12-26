---
title: 'Khai báo và khởi tạo'
description: ''
date: '2015-05-31'
tags: []
categories: ['programming']
---

Khai báo và khởi tạo có giống nhau không bạn? Đọc xong rồi bạn sẽ rõ, còn mà nếu không hiểu nữa, comment bên dưới nhé!

Đầu tiên khẳng định với bạn là hai cái đó khác nhau hoàn toàn.

- Khai báo (declare)

  ```cpp
  int a; // khai báo biến nguyên a
  ```

- Khởi tạo (initialize)

  ```cpp
  int a = 10; // khai báo biến nguyên a, sau đó giá trị 10 được gán vào a
  // thao tác này gọi là khởi tạo
  ```

<!--more-->

Trong C/cpp, khi khai báo một biến, do chưa khởi tạo nên nó sẽ nhận giá trị rác hoặc một giá trị mặc định (tuỳ theo compiler, như Visual Studio sẽ tự động khởi tạo). Sử dụng biến chưa khởi tạo sẽ gây ra những lỗi logic khó kiểm soát, hay Run-Time Check Failure.

![Khaibaokhoitao_1.png](/images/Khaibaokhoitao_1.png)

Chương trình trong hình trên vẫn chạy được nhưng nhận được cảnh báo trong lúc build `warning: 'a' is used uninitialized in this function [-Wuninitialized]|`

Khi gặp dòng lệnh 4, hệ điều hành sẽ cấp cho chương trình một vùng nhớ **chưa sử dụng** vừa đủ để lưu giá trị của biến nguyên a (tuỳ theo hệ điều hành, bộ nhớ máy tính, vùng nhớ có thể là 2 hoặc 4 bytes). Dòng lệnh 5 sẽ in ra màn hình giá trị của x, tức là giá trị của vùng nhớ trên. In ra bao nhiêu? Chúng ta hoàn toàn không biết. Giá trị được in ra có thể thay đổi mỗi lần bạn chạy lại chương trình.

Vì vậy, lời khuyên là hãy luôn cho biến một giá trị **ngay khi** nó được khai báo! :kissing_closed_eyes:
