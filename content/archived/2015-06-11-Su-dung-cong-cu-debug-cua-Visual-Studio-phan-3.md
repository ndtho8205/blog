---
title: 'Sử dụng công cụ debug của Visual Studio - Phần 3'
description: ''
date: '2015-06-11'
tags: []
categories: ['programming']
---

![SudungcongcudebugtrongVS_12.png](/images/SudungcongcudebugtrongVS_12.png)

Công cụ hỗ trợ debug của Visual Studio rất đa dạng. Mình thật sự chưa tìm hiểu hết các tính năng của nó, chỉ biết một phần nhỏ để áp dụng vào công việc hiện tại. Đối với mình, đó là một điều rất đáng tiếc.

Các bài viết này, chỉ là giới thiệu, bạn phải tự tìm tòi, khám phá để sử dụng thật tốt những công cụ có sẵn. Có những công cụ liên quan đến Parallel (lớp trong C# để xử lý song song), Threads (luồng), Disassembly (xem mã Assembly của chương trình), Registers (thanh ghi),... đòi hỏi nhiều kiến thức nâng cao mới sử dụng tốt được. Những kiến thức đó, mình chưa biết nên thứ lỗi nhé, mình không thể giới thiệu chúng được :cry:

Tiếp tục nhé! Sau đây là phần cuối của chuỗi bài viết "Sử dụng công cụ debug của Visual Studio" :wink:

<!--more-->

## Edit and continue

Nếu bạn code bằng C++ thì không sử dụng được chức năng này. Edit and continue giúp bạn có thể chỉnh sửa code của mình ngay khi đang debug mà không cần dừng compile lại. Sau khi sửa code, bạn Step đến dòng lệnh tiếp theo, những thay đổi (được Edit and Continue hỗ trợ) sẽ tự động compile, quá trình debug tiếp tục với code mới.

Xem này để biết thêm chi tiết nhé: [Supported Code Changes (C#)](https://msdn.microsoft.com/en-us/library/ms164927.aspx)

### Run to cursor

Chạy từng bước (Step by step) mình đã giới thiệu với các bạn ở phần 2. Nhưng trong vài trường hợp, nó hơi bất tiện. Nếu bạn muốn nhảy nhanh đến dòng code khác, cách xa dòng code đang kiểm tra thì sao?

Đơn giản thôi, để trỏ chuột ngay vị trí cần chạy tới, click phải chuột chọn `Run to cursor`, hoặc tổ hợp phím <kbd>Ctrl</kbd>+<kbd>F10</kbd>.

### Breakpoints - One more thing...

Bạn đã biết breakpoint rồi, khi debug thì chương trình sẽ tạm dừng ngay vị trí có nó phải không? Nhưng vấn đề ở đây là: bạn muốn dừng chỉ khi một điều kiện nào đó được thoả mãn thì phải làm sao? Để tiết kiệm thời gian và công sức, bỏ qua những bước thừa ấy mà.

Bạn click phải vào breakpoint, chọn `Condition...`.

![SudungcongcudebugtrongVS_13.png](/images/SudungcongcudebugtrongVS_13.png)

Ví dụ, bạn muốn chương trình dừng khi `i == len - 2`, bạn nhập biểu thức trên vào khung text.

![SudungcongcudebugtrongVS_14.png](/images/SudungcongcudebugtrongVS_14.png)

Khi debug, nếu `i` nhỏ hơn `len - 2`, chương trình vẫn chạy bình thường, breakpoint không bị ảnh hưởng. Đến lúc `i` bằng `len - 2`, chương trình tạm dừng ngay dòng có breakpoint.

Nếu bạn muốn dừng khi một biểu thức thay đổi giá trị thì click chọn `Has changed` nhé.

Thêm cái Hit Count nữa hen :innocent: Nhanh thôi, bạn thấy `count` là biết rồi. Breakpoint chỉ dừng khi điều kiện ở Condition thoả mãn một số lần nhất định.

![SudungcongcudebugtrongVS_15.png](/images/SudungcongcudebugtrongVS_15.png)

Roài xong roài! :heart: Chúc bạn nhanh chóng luyện thành tuyệt kĩ debug hén :ok_hand:
