---
title: 'Con trỏ trong cpp'
description: ''
date: '2015-05-31'
tags: []
categories: ['programming']
---

Khái niệm con trỏ mình đã gặp từ hồi cấp 3 lúc học Pascal, cũng chật vật lắm mới hiểu được rồi dùng để tạo danh sách liên kết, heap, cây, giải được một lốc bài toán tin.

Tìm hiểu nhiều hơn, nó cũng có nhiều trò vui nữa, sử dụng con trỏ access vào vùng memory dành riêng cho việc hiển thị màn hình (mình nhớ là mảng ký tự 80x25) khi đó thay đổi một phần tử [x, y] trong mảng, tương ứng ô kí tự trên màn hình console ở vị trí [x, y] cũng thay đổi theo (gốc toạ độ ở màn hình console là góc trái trên), mình dùng cái này để viết chương trình vẽ chữ (tặng gái :smile:). Nguyên tắc là chương trình sẽ nhận toạ độ mà chuột click vào, sau đó viết một kí tự (người dùng đã nhập trước) ngay vị trí ấy (không có dùng thủ tục gotoxy nhá). Ngồi mở lại file đó định chụp cái hình nhưng Windows 8 không chạy, buồn ghê :cry:

Quay lại vấn đề chính. Trong C/cpp có thể nói con trỏ đã được nâng lên một tầm cao mới, một công cụ cực kì mạnh :clap: Mạnh như thế nào? Hồi sau sẽ rõ :smirk:

Các khái niệm liên quan đến con trỏ đều khá trừu tượng, tìm hiểu không tường tận sẽ có nhiều vấn đề khiến bạn khó hiểu, hiểu sai (mình không dám bảo là mình master phần này, có sai sót gì cùng nhau thảo luận, sửa chữa, bổ sung nhé).

<!--more-->

### Con trỏ là gì?

Con trỏ là một biến dùng để chứa địa chỉ. Bản chất con trỏ vẫn là một **biến nguyên** bình thường như bao biến nguyên khác. Tức là nó cũng có địa chỉ riêng trong bộ nhớ, giá trị nó lưu trữ cũng thuộc dạng số nguyên.

**Thứ nhất**, mình đã nói con trỏ là một biến nguyên, có thể bạn sẽ thắc mắc với các khai báo sau.

```cpp
struct sampleStruct {
// các trường của sampleStruct
};

double *pDouble;
char *pChar;
sampleStruct \*pSS;
```

Các con trỏ `pDouble`, `pChar`, `pSS` là kiểu gì? Trả lời: Kiểu nguyên hết đó! Kiểu dữ liệu khi khai báo con trỏ là **kiểu dữ liệu của vùng nhớ** mà con trỏ trỏ đến.

**Thứ hai**, con trỏ khác các biến bình thường bạn tạo (dùng để chứa số hạng), nó chứa địa chỉ của biến khác. Khi in địa chỉ của một biến ra màn hình (dùng toán tử `&`), bạn thấy kết quả là một số nguyên viết ở hệ đếm cơ số 16 (hexadecimal) và bạn nghĩ địa chỉ thực chất cũng là số nguyên. Vâng, nhưng bạn cần hiểu thêm rằng, mặc dù địa chỉ của biến là một số nguyên **nhưng** không được đánh đồng nó với các số nguyên thông thường dùng trong các phép tính, nó có một kí hiệu đặc biệt để nhận biết. Do đó bạn không thể gán giá trị của con trỏ bằng một số nguyên bình thường. Sau đây là đoạn code chứng minh.

```cpp
#include <iostream>

int main() {
int a = 9;
int \*p;

    p = &a;
    p = 9;
    return 0;

}
```

Compiler báo lỗi ở dòng số 8: `invalid conversion from 'int' to 'int*'`. Bạn hãy sửa lại như dưới đây và chạy lại.

```cpp
p = (int\*) 9;
```

Bạn đã hiểu chứ?

**Thứ ba**, điều cuối cùng, bạn cần phân biệt rõ địa chỉ của con trỏ và địa chỉ vùng nhớ mà con trỏ trỏ đến.

```cpp
#include <iostream>

int main() {
int a = 10;
int \*p;

    std::cout << "Dia chi cua a: " << &a << std::endl;
    std::cout << "Dia chi cua p: " << &p << '\t'
          << "Gia tri cua p: " << p << std::endl;

    p = &a;

    std::cout << "Dia chi cua p: " << &p << '\t'
          << "Gia tri cua p: " << p << std::endl;

    return 0;

}
```

Đây là kết quả sau khi chạy đoạn code trên.

![Controtrongcpp_1.png](/images/Controtrongcpp_1.png)

Xem hình này để dễ hình dung nhé.

![Controtrongcpp_2.png](/images/Controtrongcpp_2.png)

Xong bài! :joy: Hy vọng nó dễ hiểu với mọi người.

À về dòng `Virtual memory`, là do mình đang tìm hiểu Memory management, đọc một số tài liệu thấy ghi vậy là chuẩn nhất. Bài sau mình sẽ làm rõ. Chả là vì tìm hiểu chưa tới đâu, lại đụng chạm tới Assembly, gần thi nên thời gian hạn hẹp. Hẹn lại nhé! :smile:
