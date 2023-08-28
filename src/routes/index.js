const categoriesRoute = require("./categories.route");
const outputcategoriesRoute = require("./output_category_route")
const me = require("./me.route")
const history = require("./history")

module.exports = [categoriesRoute, outputcategoriesRoute, me, history];
