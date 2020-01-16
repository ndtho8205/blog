---
title: 'Hàm main trong cpp'
description: ''
date: '2015-05-12'
tags: []
categories: ['programming']
---

Tất cả chương trình viết bằng cpp đều cần hàm main để thực thi. Đây là hàm quan trọng nhất, nó có nhiệm vụ điều phối và kiểm soát toàn bộ chương trình.

<!--more-->

### Hàm main được gọi và xử lý trước mọi hàm khác trong chương trình?

Hãy xem xét ví dụ dưới đây.

```cpp
#include <iostream>
using namespace std;

class MyClass {
  public:
    MyClass() { //constructor
      cout << "Not in main!" << endl;
    }
};

MyClass globalObject;

int main() {
  cout << "In main!" << endl;
  return 0;
}
```

`globalObject` là một đối tượng được khai báo toàn cục. Khi khai báo, constructor của lớp MyClass được gọi trước main, kết quả dòng `Not in main!` được in đầu tiên. Constructor có thể gọi các hàm khác và kết thúc, sau đó hàm main được gọi. Vì vậy hàm đầu tiên được gọi khi chạy chương trình không nhất thiết phải là main.

### return 0;

```cpp
int main() {
return 0;
}
```

Bạn có thắc mắc tại sao hàm main lại cần `return`? `return 0` để làm gì? `return` giá trị khác có ảnh hưởng gì không?

![Hammaintrongcpp_return_Ubuntu](/images/Hammaintrongcpp_return_1.png)

![Hammaintrongcpp_return_Windows](/images/Hammaintrongcpp_return_2.png)

Số 3 được in ra, đó chính là giá trị trả về của hàm main. Giá trị đó được hệ điều hành dùng để xác định quá trình xử lý của chương trình thành công hay không. Thông thường nếu thành công, nó sẽ trả về giá trị dương hoặc trung hoà \(>=0\), ngược lại trả về giá trị âm (<0). Đó là ý nghĩa của lệnh return cuối hàm main, nó được chuẩn ANSI C khuyến cáo sử dụng.
