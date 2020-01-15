---
title: 'Sử dụng công cụ debug của Visual Studio - Phần 1'
description: ''
date: '2015-06-04'
tags: []
categories: ['programming']
---

Làm việc chung với một số bạn, mình nhận thấy các bạn ít sử dụng đến công cụ debug (gỡ rối) của trình IDE nói chung, Visual Studio nói riêng. Khi chương trình gặp lỗi hay ra kết quả sai, bạn không biết tại sao và phải lần mò từng dòng code. Trong khi đó, hầu hết các IDE đều hỗ trợ khả năng debug chương trình, chạy từng bước và theo dõi biến thay đổi giá trị như thế nào.

Ở đây mình sẽ chia sẻ một số kinh nghiệm mình có giúp các bạn làm quen với công cụ debug rất mạnh của Visual Studio 2013, từ đó bạn có thể dễ dàng tìm hiểu và sử dụng ở những IDE khác.

<!--more-->

![SudungcongcudebugtrongVS_1.png](/images/SudungcongcudebugtrongVS_1.png)

Đầu tiên cần xác định vị trí đoạn code có khả năng phát sinh lỗi. Sau đó thêm một/nhiều điểm dừng (breakpoint, chấm tròn màu đỏ trong hình trên) vào vị trí đó. Để tạo/huỷ một breakpoint bạn có thể click chuột vào lề bên phải hoặc nhấn <kbd>F9</kbd>. Nhấn <kbd>F5</kbd> để bắt đầu debug.

Chương trình sẽ thực hiện tuần tự từng dòng code, đến vị trí đặt breakpoint thì dừng lại để ta xem xét, phát hiện dòng code bị lỗi. Các cửa sổ hỗ trợ debug được mở ra.

![SudungcongcudebugtrongVS_2.png](/images/SudungcongcudebugtrongVS_2.png)

Ta sẽ xem xét lần lượt từng công cụ trong các cửa sổ. Nếu không thấy bạn có thể mở nó trong menu Debug <i class="fa fa-long-arrow-right"></i> Windows.

### Watch windows

Đây là tập hợp các công cụ giúp bạn thấy các biến trong chương trình của mình và giá trị của nó khi chương trình chạy đến đó. Bạn cũng có thể thay đổi giá trị của biến ngay trong cửa sổ Watch.

![SudungcongcudebugtrongVS_3.png](/images/SudungcongcudebugtrongVS_3.png)

![SudungcongcudebugtrongVS_4.png](/images/SudungcongcudebugtrongVS_4.png)

#### Locals

Cửa sổ Locals sẽ hiển thị tất cả các biến cục bộ hiện tại và giá trị của nó. Một biến vừa thay đổi giá trị sẽ có màu đỏ.

#### Autos

Cửa sổ Autos chỉ hiển thị các biến vừa được sử dụng trong các dòng code trước.

#### Watch

Khi chỉ cần quan sát một số biến nào đó, cửa sổ Local hay Autos có thể khiến ta rối, chúng ta sẽ dùng cửa sổ Watch. Ta có thể nhập tên hoặc click phải chuột vào tên biến, hàm,... chọn Add Watch để đưa nó vào cửa sổ Watch, giá trị của nó sẽ được hiển thị trong cột Value.

![SudungcongcudebugtrongVS_5.png](/images/SudungcongcudebugtrongVS_5.png)

### Chạy step by step

![SudungcongcudebugtrongVS_6.png](/images/SudungcongcudebugtrongVS_6.png)

– Step into (<kbd>F11</kbd>): chạy vào hàm con, sau đó dừng ở dòng đầu tiên của mã lệnh trong hàm.

– Step over (<kbd>F10</kbd>): di chuyển dòng code tiếp theo, chạy lướt qua hàm.

– Step out(<kbd>Shift</kbd>+<kbd>F11</kbd>): chạy đến breakpoint tiếp theo, nếu không có sẽ kết thúc debug.

### Tổng hợp một số phím tắt

<kbd>F5</kbd>: chạy debug.

<kbd>Ctrl</kbd>+<kbd>F5</kbd>: chạy chương trình không dùng debug.

<kbd>F9</kbd>: tạo/huỷ một breakpoint.

<kbd>F11</kbd>: Step into.

<kbd>F10</kbd>: Step over.

<kbd>Shift</kbd>+<kbd>F11</kbd>: Step out.

<kbd>Shift</kbd>+<kbd>F9</kbd>: Quick Watch, xem nhanh giá trị của một biến ở vị trí trỏ chuột đang đặt (hoặc chỉ cần rê chuột vào tên biến)

Phần kế tiếp ta sẽ khám phá thêm các công cụ debug mạnh mẽ khác của Visual Studio.
