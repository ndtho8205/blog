---
title: 'Sử dụng công cụ debug của Visual Studio - Phần 2'
description: ''
date: '2015-06-04'
tags: []
categories: ['programming']
---

Không biết mọi người thế nào, chứ với mình, quá trình sửa lỗi, debug chương trình là phần mình khoái nhất. Nó đòi hỏi tư duy và lập luận logic rất cao, bạn cũng cần cho mình một chiến lược cụ thể mới có thể đẩy nhanh tốc độ debug, khoanh vùng vị trí code lỗi, và sửa nó. Quan trọng hơn, bạn phải biết bạn viết gì, code bạn chạy như thế nào, chuyện gì sẽ xảy ra tiếp theo, tức là phải quản lí được code của mình. Hãy tưởng tượng quá trình chạy của chương trình, bạn sẽ thấy nó khá dễ dàng.

Tự sướng tí :wink: Ta tiếp tục nhé!

<!--more-->

### Breakpoints

Cửa sổ này đơn giản chỉ là một danh sách các breakpoint được đặt trong code của bạn. Bạn có thể di chuyển đến breakpoint nhanh chóng bằng cách click đúp chuột vào tên nó.

Một số mục như Labels, Condition, Hit Count mình sẽ để dành cho phần sau. Lí do? Xem cuối bài nhé.

### Command Window

Command Window được dùng để điều khiển Visual Studio thông qua giao diện dòng lệnh và debug. Từ lúc biết và xài thử nó đến giờ, mình chưa đụng tới lần nào nữa.

Không chỉ trong debug, bạn có thể mở cửa sổ này bằng cách vào menu View <i class="fa fa-long-arrow-right"></i> Other Windows <i class="fa fa-long-arrow-right"></i> Command Window.

![SudungcongcudebugtrongVS_7.png](/images/SudungcongcudebugtrongVS_7.png)

Gõ `File.` vào cửa sổ, bạn sẽ thấy nhắc lệnh. Ngoài ra có các nhóm lệnh khác để điều khiển Visual Studio (như `Edit`, `View`, `Build`,... hình như trùng tên trên thanh menu thì phải :wink:). Bạn có thể tự tìm hiểu.

Ví dụ vài cái nhé:

`File.OpenFile`: mở file, có thể dùng lệnh `of` cho gọn.

`Build.Compile`: dịch chương trình.

`bp`: đặt breakpoint tại dòng hiện tại.

Trong debug, bạn dùng lệnh `? varA` hay `? myFunc()` để xem giá trị của biến A hay hàm myFunc() (có thể truyền đối số vào nếu có). Một số lệnh khác:

`??`: đưa biến/hàm vào cửa sổ Watch.

`locals`: hiện cửa sổ Locals.

`autos`: hiện cửa sổ Autos.

![SudungcongcudebugtrongVS_8.png](/images/SudungcongcudebugtrongVS_8.png)

### Call Stack

Cái này dành cho bạn nào "khoái" đệ quy đây :heart_eyes:

![SudungcongcudebugtrongVS_9.png](/images/SudungcongcudebugtrongVS_9.png)

Bạn đặt breakpoint tại dòng đầu tiên trong hàm đệ quy. Mỗi lần gọi đệ quy, chương trình sẽ tạm ngưng.

Nhìn hình thật kĩ nha. Trước khi gọi hàm `main`, ta có 2 hàm phụ (hai hàm này làm gì mình không biết nữa :cry:). Ở dòng 15, hàm `main` gọi hàm `myPow` và chờ nó kết thúc. Hàm `myPow` gọi tới chính nó ở dòng 7, tiếp tục như thế đến khi n = 0, gặp điều kiện thoát khỏi đệ quy (dòng 6), thì ta cho chương trình dừng lại (dấu tròn đỏ có mũi tên vàng đó bạn).

Nhìn vào Call Stack bạn thấy rõ quá trình và thứ tự gọi hàm, các đối số truyền vào nó (chuột phải vào một dòng bất kì trong Call Stack, chọn Show Parameter Values nhé :grin:)

Ngoài lề chút, bạn thấy từ "Stack" có quen không? Nếu biết về đặc điểm của vùng nhớ được sử dụng khi chạy chương trình, bạn sẽ biết tại sao nó lại xuất hiện ở đây. Nhưng thôi, để tránh làm loãng bài viết, mình sẽ có một series riêng về phần này sau. (mình hẹn hơi bị "nhiều" thì phải :wink:)

### Immediate Window

Hehe tới phần mình "khoái" rồi nè! Cái này cực "xịn" luôn nhé. Trong quá trình debug, bạn có thể dùng nó để xác định biểu thức, xem/sửa đổi giá trị biến ngay trong giao diện dòng lệnh, kiểm tra một hàm có chạy được và ra kết quả đúng hay không, từ đó khoanh vùng phạm vi code sai. Rất tiện!

Xem hình để hiểu hơn nào.

![SudungcongcudebugtrongVS_10.png](/images/SudungcongcudebugtrongVS_10.png)

Dùng này để kiểm tra phương thức của lớp nữa.

![SudungcongcudebugtrongVS_11.png](/images/SudungcongcudebugtrongVS_11.png)

Bạn thử gõ `> File.` xem, vâng nó rất giống với Command Window. Nhưng mình thích dùng Immediate Window hơn, ít nhất khoản debug, đỡ phải gõ dấu `?` để xem giá trị của biến :smile:

Kết thúc phần hai. Các công cụ trên đây rất hay, nếu biết cách sử dụng, kết hợp với nhau, quá trình debug sẽ dễ dàng hơn nhiều, lấy ra khoe, nhá hàng cũng được lắm đấy :wink:

Hai phần đã xong. Bạn học được gì?

Chỉ đọc thì không giúp ích bao nhiêu, bạn hãy áp dụng vào các chương trình thực tế, kĩ năng dần hoàn thiện sẽ giúp bạn tiết kiệm rất nhiều thời gian. Qua hai phần này, chúng ta đã tìm hiểu "sơ lược" một số công cụ "nhìn thấy sẵn" (tức là chạy debug là các cửa sổ đó hiện ra ngay, đập ngay vào mắt bạn). Phần 3 tiếp theo sẽ là một số công cụ tiềm ẩn khác. Cùng nhau tìm hiểu nhé! :wink:
