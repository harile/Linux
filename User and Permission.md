# **Lab document**
## 1.Thao tác với user
### - Tạo user
```useradd [tên user cần tạo]```
**Ví dụ**``` useradd bao```
### - Đặt mật khẩu cho user
```passwd  [tên user cần tạo]```
**Ví dụ:** passwd bao
### - Xóa user
```userdel　[tên user cần tạo]```
**Ví dụ:** userdel　bao
## 2. Thao tác với nhóm
### - Tạo nhóm
```groupadd ketoan```
### - Thêm user vào group
```usermod a -G  groupname username```
```usermod -a -G ketoan bao```
### - Kiểm tra xem user đã nằm trong group hay chưa
```id bao```
## 3. File and folder permission
### - Kiểm tra permisson hiện tại
```ls -la```

### - Thứ tự phân quyền user/group/other
d: là thư mục
r = read permission
w = write permission
x = execute permission
- = no permission
[Link]https://www.guru99.com/file-permissions.html
### - Set permission cho file and folder
**Bảng phân quyền**
| Number 	| Permission Type       	| Symbol 	|
|--------	|-----------------------	|--------	|
| 0      	| No Permission         	| ---    	|
| 1      	| Execute               	| --x    	|
| 2      	| Write                 	| -w-    	|
| 3      	| Execute + Write       	| -wx    	|
| 4      	| Read                  	| r--    	|
| 5      	| Read + Execute        	| r-x    	|
| 6      	| Read +Write           	| rw-    	|
| 7      	| Read + Write +Execute 	| rwx    	|
### - Lệnh set quyền cho file và folder
```chmod [quyền] [tên file hoặc thư mục]```
**Ví dụ:** chmod -Rf 777 ketoan
### - Lệnh gán quyền cho user và group
```chown [tên user]: [tên nhom ] [tên file hoặc thư mục]```
**Ví dụ:** chown -Rf bao:bao ketoan 