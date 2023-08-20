# BÀI TẬP CHO RESTful API BẰNG NODEJS

## NOTE:

    Công nghệ/Thư viện được sử dụng: NodeJS/Express/Sequelize/Mysql

    Em sử dụng Database được cấp ở bài SQL trước đó để tiết kiệm thời gian.

    Dữ liệu nằm ở trong file "Database.sql"

## CÁC PHƯƠNG THỨC API:

    *GET DANH SÁCH SẢN PHẨM:

        VD: GET http://localhost:8080/api/v1/products?page=1&limit=5&q=Ao&sort=ProductID:asc
        page: Số thứ tự trang
        limit: Số sản phẩm trong 1 trang
        q: Tìm kiếm sản phẩm
        sort: Sắp xếp sản phẩm Têntrường:ASC hoặc Têntrường:DESC

    *GET SẢN PHẨM THEO ID:

        VD: GET http://localhost:8080/api/v1/products/1
        Cú pháp: /products/[id]

    *TẠO MỚI SẢN PHẨM:

        VD: POST http://localhost:8080/api/v1/products

    *CẬP NHẬT SẢN PHẨM

        VD: PUT http://localhost:8080/api/v1/products/1
        Cú pháp: /products/[id]

    *XOÁ SẢN PHẨM:

        VD: DELETE http://localhost:8080/api/v1/products/1
        Cú pháp: /products/[id]
