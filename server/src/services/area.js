import db from "../models";

// Get all area
export const getAreasService = () =>
  new Promise(async (resolve, reject) => {
    try {
      const response = await db.Area.findAll({
        raw: true,
        attributes: ["code", "value", "order"],
      });
      resolve({
        err: response ? 0 : 1,
        msg: response ? "Ok" : "Failed to get areas",
        response,
      });
    } catch (error) {
      reject(error);
    }
  });
