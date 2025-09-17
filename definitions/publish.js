publish("products-publish", {
    type: "table",
  }).query(ctx =>  `SELECT * FROM ${ctx.ref("products")}`);