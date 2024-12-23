const { Sequelize } = require("sequelize");

const sequelize = new Sequelize(
  'phong_tro', // database
  'root', // username
  '123456', // password
  {
    host: 'localhost',
    dialect: "mysql",
    port: 3307,  // port đã map trong docker
    logging: true
  }
);

const connectDatabase = async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
    throw error;
  }
};

export default connectDatabase;
