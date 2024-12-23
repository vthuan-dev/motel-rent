const { Sequelize } = require("sequelize");

const sequelize = new Sequelize(
  'railway', // database name trên Railway
  'root', // username
  'CmcxpBTQwDhHRCnCiJiiUIQegmnxcUJU', // password từ Railway
  {
    host: 'autorack.proxy.rlwy.net', // host từ Railway
    dialect: "mysql",
    port: 34147,  // port từ Railway
    logging: false,
    dialectOptions: {
      ssl: {
        require: true,
        rejectUnauthorized: false
      }
    }
  }
);

// Trong connectDB.js, thêm log chi tiết
const connectDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connected to database:", {
      database: sequelize.config.database,
      host: sequelize.config.host,
      port: sequelize.config.port
    });
  } catch (error) {
    console.error("Database connection error:", error);
  }
};

export default connectDatabase;
