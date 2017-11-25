# Image

## Nginx 1.0

負責將送到 nginx 的請求轉發到 TARGET_SERVICE 指定的位置

存取日誌/錯誤日誌會直接印在 stdout 上

Port 號: 80

```
asia.gcr.io/elite-protocol-186205/nginx-ssl-proxy:1.0
```

可用環境變數:

```
1. ENABLE_SSL 布林值
    * 此次我們固定用 false
2. TARGET_SERVICE 字串
    * 放欲連線的 Host 位置或 IP Address
```

## Nginx 1.1

負責將送到 nginx 的請求轉發到 TARGET_SERVICE 指定的位置

存取日誌放在 /var/log/nginx/access.log

錯誤日誌放在 /var/log/nginx/error.log

Port 號: 80

```
asia.gcr.io/elite-protocol-186205/nginx-ssl-proxy:1.1
```

可用環境變數:

```
1. ENABLE_SSL 布林值
    * 此次我們固定用 false

2. TARGET_SERVICE 字串
    * 放欲連線的 Host 位置或 IP Address
```

## Web

負責將網頁呈現出來
Port 號: 12345

```
asia.gcr.io/elite-protocol-186205/hugo-web:1.0
```

## Tailer

負責將指定的檔案 tail 到 stdout 上

```
asia.gcr.io/elite-protocol-186205/tailer:1.0
```

可用環境變數:

```
1. TARGET_FILE 字串
    * 欲 tail 的檔案路徑
```