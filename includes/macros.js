/**
 * Hàm này nhận vào tên của một bảng nguồn và trả về một câu lệnh SELECT hoàn chỉnh
 * để tạo một bảng staging tiêu chuẩn.
 * @param {string} source_table - Tên bảng nguồn (ví dụ: 'raw_products')
 * @returns {string} - Một chuỗi ký tự chứa câu lệnh SQL
 */
function create_staging_table(source_table) {
  // Dùng dấu ` (backtick) để viết SQL trên nhiều dòng cho dễ đọc
  const sql_query = `
    SELECT
      product_id,
      product_name,
      price,
      CURRENT_TIMESTAMP() as _loaded_at
    FROM
      ${source_table}
  `;

  // Trả về chuỗi SQL vừa tạo
  return sql_query;
}

// "Xuất khẩu" hàm này để các file khác có thể sử dụng
module.exports = {
  create_staging_table
};