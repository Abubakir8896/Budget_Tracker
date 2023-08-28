const {Router} = require("express");

const {
  create,
  find,
} = require("../controllers/me");

const router = Router();

router.post("/me", create);
router.get("/me", find);

module.exports = router;
