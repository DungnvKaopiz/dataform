function create_staging_table(source_table) {

    const sql_query = `
      SELECT
        product_id,
        product_name,
        price,
        CURRENT_TIMESTAMP() as _loaded_at
      FROM
        ${source_table}
    `;
  
    return sql_query;
  }
  
  module.exports = {
    create_staging_table
  };