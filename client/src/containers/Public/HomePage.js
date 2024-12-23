import React from "react";
import { text } from "../../utils/constant";
import { Province, ItemSidebar, RelatedPost } from "../../components";
import { List, Pagination } from "./index";
import { useSelector } from "react-redux";

const HomePage = () => {
  const { categories, prices, areas } = useSelector((state) => state.app);

  return (
    <div className="flex flex-col w-full gap-3">
      <div>
        <h1 className="text-[28px] font-bold">{text.HOME_TITLE}</h1>
        <p className="text-base text-gray-700">{text.HOME_DESC}</p>
      </div>
      <Province />
      <div className="flex w-full gap-4">
        <div className="w-[70%]">
          <List />
          <Pagination />
        </div>
        <div className="w-[30%] flex flex-col gap-4 justify-start items-center">
          <ItemSidebar content={categories} title="Danh sách cho thuê" />
          {/* <ItemSidebar
            isDouble={true}
            type="priceCode"
            content={prices}
            title="Xem theo giá"
          />
          <ItemSidebar
            isDouble={true}
            type="areaCode"
            content={areas}
            title="Xem theo diện tích"
          /> */}
          <RelatedPost />
        </div>
      </div>
    </div>
  );
};

export default HomePage;
