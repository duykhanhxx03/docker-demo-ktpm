# Bài tập KTPM Tuần 1

> **INT3105_1**

Trần Duy Khánh

21020769

Video demo: [https://www.youtube.com/watch?v=9itSrdOfvGk](https://www.youtube.com/watch?v=9itSrdOfvGk)

---

# Lý thuyết

## Docker, docker-compose là gì?

### Docker

<aside>
💡 Docker là một nền tảng mã nguồn mở giúp đóng gói, triển khai và vận hành ứng dụng một cách dễ dàng hơn. Docker sử dụng container, một dạng ảo hóa nhẹ, để cô lập ứng dụng và môi trường của nó khỏi hệ thống máy chủ.

</aside>

- **Lợi ích:**
  - **Tính nhất quán:** Đảm bảo ứng dụng chạy giống nhau trên mọi môi trường (phát triển, thử nghiệm, sản xuất)
  - **Khả chuyển:** Dễ dàng di chuyển ứng dụng giữa các máy chủ mà không cần cấu hình lại
  - **Hiệu quả:** Tiết kiệm tài nguyên hệ thống bằng cách chia sẻ các thư viện và tập tin chung
  - **Tăng tốc độ phát triển:** Tự động hóa các quy trình triển khai và vận hành
  - **Mở rộng:** Dễ dàng mở rộng quy mô ứng dụng bằng cách thêm các container mới

## docker-compose

<aside>
💡 Docker Compose là một công cụ hỗ trợ xác định và chạy các ứng dụng multi-container. Docker Compose có thể xử lý đồng thời multi-container trong sản xuất, staging, phát triển, thử nghiệm và CI.

</aside>

<aside>
💡 Docker Compose hoạt động bằng cách áp dụng các quy tắc được xác định trong tệp docker-compose.yaml.


</aside>

### **Lợi ích:**

- **Giảm thiểu sự phức tạp:** Dễ dàng quản lý các ứng dụng đa container
- **Tăng tốc độ phát triển:** Tự động hóa việc khởi chạy và cấu hình môi trường ứng dụng
- **Cải thiện khả năng tái tạo:** Đảm bảo môi trường ứng dụng được tạo ra giống nhau trên mọi môi trường
- **Tăng độ tin cậy:** Giảm thiểu nguy cơ lỗi do cấu hình thủ công

### **Các thành phần chính:**

- **Docker Engine** : là thành phần chính của Docker, đây có thể được xem là một “công xưởng” để hỗ trợ đóng gói và vận hành các ứng dụng thông qua các **container**.
- **Docker Images:** Gói tin chứa tất cả các thành phần cần thiết để chạy application, bao gồm code, lib, os v.v.
- **Docker Containers:** Image khi run lên sẽ là container, chúng ta có thể có nhiều container chạy cùng lúc từ một image.
- **Docker Hub:** Kho lưu trữ trung tâm (Repository) để chia sẻ và truy cập các images.
- **Docker Client**: Là nơi chúng ta có thể giao tiếp với Docker thông qua Docker CLI.
- **Docker Daemon**: là một service chạy ngầm, tiếp nhận tất cả request từ Docker Client để quản lý các đối tượng như Container, Image, Network và Volumes. Các Docker Daemon cũng giao tiếp với nhau để quản lý các Docker Service.
- **Dockerfile**: là một file bao gồm các chỉ dẫn để build một image.
- **Volumes**: là cơ chế lưu trữ dữ liệu khi các container vận hành.

---

## Linux vs Unix vs BSD hay *nix? macOs thuộc loại nào?

---

## Alpine vs Ubuntu

<aside>
💡 Alpine Linux và Ubuntu là hai bản phân phối Linux phổ biến với những đặc điểm và mục đích sử dụng khác nhau. Hãy khám phá những khác biệt chính giữa hai bản phân phối này:


</aside>

| Đặc điểm\ Tên               | Alpine Linux                                                 | Ubuntu                                                       |
| --------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Kích thước và dung lượng    | Alpine Linux nổi tiếng với kích thước nhỏ và hướng tiếp cận tối giản. Nó được thiết kế để nhẹ nhàng và tối ưu hóa cho môi trường có tài nguyên hạn chế. Hình ảnh Alpine Linux cơ bản nhỏ hơn đáng kể so với Ubuntu, làm cho nó lý tưởng cho môi trường dựa trên container nơi việc tận dụng tài nguyên hiệu quả là quan trọng. | Ubuntu là một bản phân phối phong phú hơn với dung lượng lớn, cung cấp một loạt gói và công cụ sẵn có. |
| Quản lý gói                 | Alpine Linux sử dụng trình quản lý gói riêng của nó được gọi là apk. Alpine Package Keeper (APK) được tối ưu hóa cho thiết kế tối giản của Alpine, sử dụng musl libc thay vì glibc để giảm kích thước gói và tăng tốc độ cài đặt. | Ubuntu sử dụng Advanced Package Tool (APT) làm hệ thống quản lý gói, cung cấp một kho lưu trữ lớn của các gói được biên dịch trước. Những gói này có thể được cài đặt và quản lý dễ dàng bằng các lệnh apt-get hoặc aptitude. |
| Bảo mật và Củng cố hệ thống | Alpine Linux tập trung mạnh vào bảo mật và cung cấp một số tính năng tích hợp để củng cố hệ thống. Nó áp dụng một hướng tiếp cận tối giản bằng cách chỉ bao gồm các gói cần thiết trong hình ảnh cơ bản, giảm bề mặt tấn công. | Ubuntu cũng chú trọng đến bảo mật và cung cấp các bản cập nhật và vá bảo mật đều đặn, nhưng có một lựa chọn gói rộng hơn, điều này có thể tạo ra bề mặt tấn công lớn hơn nếu không được quản lý một cách đúng đắn. |
| Cộng đồng và Hỗ trợ         | Alpine Linux có một cộng đồng nhỏ hơn nhưng đang phát triển, nổi tiếng với sự tập trung vào tính tối giản và hiệu quả. Ngoài ra, Alpine Linux cũng được hưởng lợi từ sự hỗ trợ của cộng đồng Docker, vì nó là một lựa chọn phổ biến cho môi trường dựa trên container. | Ubuntu có một cộng đồng lớn và tích cực, với tài liệu phong phú và hỗ trợ từ cộng đồng. Nó hưởng lợi từ một cộng đồng người dùng đáng kể, làm cho việc tìm kiếm tài nguyên và nhận được sự trợ giúp dễ dàng hơn khi cần thiết. |
| Các trường hợp sử dụng      | Kích thước nhỏ và thiết kế tối giản của Alpine Linux làm cho nó phù hợp cho các môi trường nhẹ nhàng và có tài nguyên hạn chế. | Ubuntu, với dung lượng lớn và lựa chọn gói rộng hơn, phù hợp cho nhiều trường hợp sử dụng khác nhau. Nó có thể được sử dụng cho việc sử dụng trên máy tính để bàn, triển khai máy chủ và môi trường phát triển yêu cầu một bộ công cụ và thư viện phong phú. |

Tóm lại, Alpine Linux cung cấp một hướng tiếp cận nhẹ nhàng và tối giản, tối ưu hóa cho môi trường có tài nguyên hạn chế và containerization. Trong khi đó, Ubuntu cung cấp một bản phân phối phong phú và đa năng hơn, phù hợp cho nhiều trường hợp sử dụng khác nhau.

---

## VNC?

### **VNC là gì?**

<aside>
💡 VNC Server (Virtual Network Computing Server) là một hệ thống được sử dụng để chia sẻ màn hình máy tính cho người dùng từ xa. Đây là một công nghệ giúp người dùng truy cập và điều khiển máy tính từ một nơi khác thông qua mạng.


</aside>

<aside>
💡 VNC Server hoạt động dựa trên giao thức TCP (Transmission Control Protocol) và sử dụng các cổng bắt đầu từ 5900 trở lên. Khi được kích hoạt, VNC Server ghi nhận nội dung của framebuffer (bộ nhớ hình ảnh) trên máy tính và chia sẻ nội dung này với VNC Client (người dùng từ xa). Thông qua một kết nối mạng, VNC Client có thể hiển thị và điều khiển màn hình máy tính từ xa như làm việc trực tiếp trên máy tính đó.


</aside>

### **VNC hoạt động như thế nào?**

VNC Server hoạt động theo mô hình Client/Server và sử dụng giao thức VNC (Virtual Network Computing) để chia sẻ màn hình máy tính từ xa. Khi một client (người dùng từ xa) kết nối tới VNC Server, quá trình chia sẻ màn hình bắt đầu.

- **Bước 1:** VNC Server ghi nhận dữ liệu framebuffer, là các thông tin về hình ảnh hiển thị trên màn hình máy tính. Dữ liệu này được chuyển đổi thành các gói tin và gửi từ VNC Server tới VNC Client thông qua kết nối mạng.
- **Bước 2:** Khi nhận được các gói tin từ VNC Server, VNC Client tạo ra một bản sao tái hiện của màn hình máy tính nguồn trên màn hình của mình. Điều này cho phép người dùng từ xa xem và tương tác với màn hình máy tính nguồn.

Kết quả là, mọi hành động và tương tác từ người dùng trên VNC Client sẽ được chuyển tiếp tới VNC Server thông qua kết nối mạng và VNC Server sẽ thực hiện các thao tác tương ứng trên máy tính nguồn. Điều này cho phép người dùng từ xa điều khiển và làm việc trên máy tính một cách dễ dàng và hiệu quả từ một nơi khác.

### Ưu điểm của VNC

- **Truy cập và điều khiển từ xa thuận tiện:** VNC cho phép người dùng từ xa truy cập vào máy tính một cách thuận tiện. Người dùng có thể kết nối tới và điều khiển máy tính từ bất kỳ đâu, giúp tiết kiệm thời gian và công sức trong việc quản lý và sử dụng máy tính từ xa. Việc tìm hiểu VNC Server là gì và cách sử dụng cụ thể sẽ giúp tận dụng tốt ưu điểm này.
- **Dễ dàng cài đặt và sử dụng:** VNC không yêu cầu cấu hình phức tạp, việc cài đặt và sử dụng VNC Server và VNC Client đơn giản và dễ dàng. Người dùng chỉ cần cài đặt phần mềm tương ứng trên máy tính mình và có kết nối mạng, sau đó có thể bắt đầu chia sẻ và điều khiển màn hình từ xa.
- **Đa năng và linh hoạt:** Với VNC, người dùng có thể chia sẻ màn hình và tương tác với nhiều máy tính khác nhau cùng một lúc. Điều này giúp trong việc quản lý và hỗ trợ từ xa cho nhiều máy tính trong một môi trường làm việc hoặc trong việc cung cấp dịch vụ hỗ trợ kỹ thuật.

### **Nhược điểm của VNC**

- **Tốc độ truyền dữ liệu chậm:** Việc truyền tải dữ liệu từ máy tính nguồn tới VNC Client qua mạng có thể chậm hơn so với việc truy cập trực tiếp trên máy tính. Điều này có thể gây trễ trong việc hiển thị hình ảnh và phản hồi của hệ thống khi người dùng từ xa tương tác với máy tính nguồn.
- **Thiếu tính năng bảo mật cao:** VNC có thể bị tin tặc tấn công và đánh cắp thông tin do không có tính năng bảo mật cao mặc định. Việc sử dụng VNC qua mạng không an toàn có thể để lại các mối đe dọa về an ninh dữ liệu và quyền riêng tư, đặc biệt khi kết nối đến mạng không tin cậy.
- **Hỗ trợ thiết bị hạn chế:** Mặc dù VNC được hỗ trợ trên nhiều hệ điều hành và các thiết bị khác nhau, tuy nhiên không phải tất cả các thiết bị đều hỗ trợ VNC. Điều này có thể hạn chế khả năng sử dụng VNC trên một số thiết bị cụ thể, đặc biệt là trên các thiết bị di động hoặc hệ điều hành đặc biệt.

---

# Thực hành

Dockerfile này chứa os base ubuntu ở version mới nhất, tiến hành cập nhật repo apt và cài package openssh-server, đồng thời config SSH lại sao cho có thể đăng nhập được bằng tài khoản root mà không cần SSH-key

Tạo tài khoản duykhanhxx03 và gán mật khẩu: 12345678

Tiến hành mở port 22 trong network container, mặc định là bridge và chạy SSH service

```docker
FROM ubuntu:latest

RUN apt update && apt install -y openssh-server
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN  useradd -rm -d /home/duykhanhxx03 -s /bin/bash -g root -G sudo -u 1000 duykhanhxx03 && \
    echo 'duykhanhxx03:12345678' | chpasswd && \
    echo 'root:12345678' | chpasswd

EXPOSE 22

ENTRYPOINT service ssh start && bash
```

Tiến hành tạo image bằng lệnh sau:

```bash
docker build -t ubuntu_ssh .
```

![Untitled](https://github.com/duykhanhxx03/bop-bop/assets/99308937/18de19ff-5c14-458b-8d61-7f3447297148)

Lệnh trên tạo 1 image tên ubuntu_ssh tại thư mục hiện tại bash đang trỏ đến, ở đây là /home/docker-example/ubuntu-ss

File yaml dưới đây mô tả đang sử dụng docker-compose version 3, định nghĩa service remote_ubuntu dùng image mà ta vừa tạo là ubuntu_ssh, NAT port với host là 22.

stdin_open: true và --tty cho phép tương tác với container thông qua terminal

```yaml
version: '3'

services:
  remote_ubuntu:
    image: ubuntu_ssh:latest
    ports:
      - "22:22"
    stdin_open: true # docker run -i
    tty: true        # docker run -t
```

Tại thư mục chứa file docker-compose.yml:

```bash
docker compose up
```

![Untitled (1)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/ff449bcc-5d57-4d7b-af1e-382076dd6a87)

```bash
docker container l
//docker container ls -a
```

![Untitled (2)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/5303d379-b12e-4a10-98dd-77d2b3d3e580)

Tiến hành xem thông tin của container, bao gồm thông tin mạng

```bash
docker container inspect 9fafc29e9a5a
```

![Untitled (3)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/040cd0de-e9a7-4c75-ba4f-f73c056817cd)

![Untitled (4)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/7631b2aa-67a9-4c72-b9d9-0bbc43193557)

Ở đây ip của container là 172.22.0.2.

Tiến hành SSH sang container bằng host, thông qua tài khoản và mật khẩu tạo trong Dockerfile.

```bash
ssh duykhanhxx03@172.22.0.2
```

![Untitled (5)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/ee4ed795-dfe9-4dda-832b-734cdf5afc62)

Xác nhận bằng yes và nhập mật khẩu.

Chuyển sang quyền root:

```bash
su root
```

![Untitled (6)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/b5efa48e-97b9-47ff-be63-2a72e5c4ef08)

Cập nhật repository apt và cài desktop enviroment, ở đây là xfce4.

```bash
apt update && apt install xfce4 xfce4-goodies
```

Sau khi cài xong DE, tiến hành restart container và dùng host SSH lại container như ban đầu:

```bash
docker container restart 9fafc29e9a5a
```

![Untitled (7)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/b6c0626b-91d7-4b8a-bdec-2ac170851c9f)

Cài đặt vncserver:

```bash
apt install tigervnc-standalone-server
```

Khởi chạy vncserver

```bash
vncserver
```

Cài đặt mật khẩu:

![Untitled (8)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/89719654-fdfe-4503-b1bc-f70a69e4779e)

> **Lưu ý:** Mật khẩu sẽ có độ dài từ 6→8 kí tự, nếu mật khẩu dài hơn 8 kí tự, nó sẽ bị cắt ngắn lại
> Ví dụ: Nếu nhập mật khẩu như "startup2233", nó sẽ bị cắt thành "startup2".

Sau khi thiết lập mật khẩu, xuất hiện thông báo yêu cầu đặt mật khẩu view-only. Điều này có nghĩa là bất kỳ ai truy cập máy chủ VNC bằng mật khẩu view-only sẽ không thể điều khiển máy tính từ xa bằng chuột hoặc bàn phím.

Đối với bài này, không cần thiết lập mật khẩu view-only. Chỉ cần gõ N và nhấn Enter.

![Untitled (9)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/3a3f82b1-c4c1-4a88-a80a-4e8c46b94b50)

Chúng ta có thể nhìn tiến trình này hiển thị danh sách kết nối của VNC server từ đoạn tin bên trên. VNC server khởi chạy ở port 5901, đây là port hiển thị. Port 5901 còn được gọi là :1. Tương tự, nếu tạo thêm nhiều VNC server chúng sẽ được hiển thị trên cổng 5902 là ":2", cổng 5903 là ":3", v.v.

Đến bước này, chúng ta đã cài đặt thành công VNC server và thiết lập mật khẩu. Bây giờ, ta sẽ config một số lệnh để VNC server chạy mỗi lần chúng ta khởi động.

Nhìn chung, chúng ta cần làm cho VNC hiểu rằng Xfce là DE mà chúng ta dùng mỗi khi VNC client connect và sử dụng.

Hiển thị danh sách VNC instance, chạy lệnh:

```bash
vncserver --list
```

![Untitled (10)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/0fe32e15-e366-4e0d-8768-3dfdda63199c)

Để bắt đầu, cần kill VNC instance đã tự động chạy khi chúng ta gọi lệnh vncserver, display ở đây là :1 

```bash
vncserver -kill :1
//vncserver -kill :* để kill hết instance đang chạy
```

![Untitled (11)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/f5bacf5f-480c-476f-aa05-46826b370d1a)

> **Lưu ý:** Trong trường hợp này, TigerVNC chưa tạo ra thư mục **~/.vnc/xstartup,** nếu có, thực hiện backup bằng lệnh **mv ~/.vnc/xstartup ~/.vnc/xstartup.bak**, và tạo 1 file mới

Chưa có package nano, tiến hành cài đặt:

```bash
apt install nano
```

Tạo file xstartup với nano editor, chạy lệnh sau:

```bash
nano ~/.vnc/xstartup
```

và thêm đoạn bên dưới:

```bash
#!/bin/sh

# Start up the standard system desktop
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

/usr/bin/startxfce4

[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
x-window-manager &
```

Tiến hành save (**Ctrl + O**, then **Enter**) và exit (**Ctrl + X**).

![Untitled (12)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/5f7bc0ab-3ff4-44e1-9cff-97dedf5bee6c)

Cuối cùng, chúng ta cần làm cho tệp này có thể thực thi:

```bash
chmod +x ~/.vnc/xstartup
```

Khi hoàn tất, restart VNC server với lệnh sau:

```bash
vncserver -localhost no :1
```

![Untitled (13)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/0881747b-ba62-4b1b-87a3-ac999b36e944)

> **Lưu ý:** Mặc định, TigerVNC chỉ chấp nhận kết nối từ 127.0.0.1 hay localhost vì lý do bảo mật. Tuy nhiên, vì chúng ta chỉ đang demo, thêm tùy chọn "-localhost no" để có thể truy cập vào VNC server từ bên ngoài.

Chạy lại **vncserver --list** để kiểm tra:

![Untitled (14)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/521b2dc2-3d8f-46b0-9d49-6fd5d2d8cb66)

Tại host, chạy lệnh sau để mở SSH Tunnel cho VNC server

```bash
ssh -L 59000:localhost:5901 -C -N -l server_user_name server_ip_address
```

Chúng ta cần đổi **server_user_name** và **server_ip_address,** trong trường hợp này, chạy lệnh sau:

```bash
ssh -L 59000:localhost:5901 -C -N -l duykhanhxx03 172.22.0.2
```

![Untitled (15)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/a21cef2f-601b-4579-8855-05fc67a8cca4)

> Lưu ý: sau khi chạy lệnh sau, SSH connection sẽ treo sau khi nhập mật khẩu (Tính năng 😃).
> Khi hoàn thành phiên làm việc với VNC client, chúng ta có thể kill câu lệnh trên bằng **Ctrl + C.** Hơn nữa, chúng ta có thể thêm tham số -f, làm cho SSH tunneling chạy ngầm.

Giải thích lệnh:

- L 59000:localhost:5901: Đối số **L** xác định cổng trên máy tính cục bộ của bạn (ở đây là **59000**) để kết nối đến server đích (**server_ip_address**) thông qua server và cổng được chỉ định (**localhost:5901**). **Chú ý:** Cổng cục bộ, 59000, có thể là bất kỳ số nào từ 1 → 65535 (2^16) và chưa được service nào sử dụng.
- C: Đối số này giúp tăng tốc quá trình và giảm sử dụng tài nguyên.
- N: Đối số này ngăn việc thực thi các lệnh từ xa và chỉ cho SSH chuyển tiếp cổng.
- l server_user_name server_ip_address: Dòng này xác định tên người dùng bạn sẽ sử dụng để đăng nhập vào máy chủ. Hãy đảm bảo rằng người dùng là **không phải root** và không có quyền root.

Sau khi thiết lập SSH Tunnel xong, khởi chạy VNC Client và connect với địa chỉ **localhost:59000**.

![Untitled (16)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/4cdf5ac6-1bc1-4eb0-b0ee-f1d94eeaedb7)

![Untitled (17)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/94794419-0564-4178-81bc-17f204fff3cd)

![Untitled (18)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/e367113f-ded2-4308-ab38-25c5c1938ebf)

![Untitled (19)](https://github.com/duykhanhxx03/bop-bop/assets/99308937/ad99310f-2d7b-41cf-a839-5c8efbce6f00)
