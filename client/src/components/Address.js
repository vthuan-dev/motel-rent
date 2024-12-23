import React, { memo, useEffect, useState } from "react";
import { Select, InputReadOnly } from "../components";
import { apiGetPublicProvinces, apiGetPublicDistrict } from "../services";
import { useSelector } from "react-redux";

const Address = ({ setPayload, invalidFields, setInvalidFields }) => {
  const { dataEdit } = useSelector((state) => state.post);
  const [provinces, setProvinces] = useState([]);
  const [districts, setDistricts] = useState([]);
  const [province, setProvince] = useState();
  const [district, setDistrict] = useState();
  const [reset, setReset] = useState(false);

  useEffect(() => {
    if (dataEdit) {
      let addressArr = dataEdit?.address?.split(",");
      let foundProvince =
        provinces?.length > 0 &&
        provinces?.find(
          (item) =>
            item.province_name === addressArr[addressArr.length - 1]?.trim()
        );
      setProvince(foundProvince ? foundProvince.province_id : "");
    }
  }, [provinces, dataEdit]);

  useEffect(() => {
    if (dataEdit) {
      let addressArr = dataEdit?.address?.split(",");
      let foundDistrict =
        districts.length > 0 &&
        districts?.find(
          (item) =>
            item.name === addressArr[addressArr.length - 2]?.trim()
        );
      setDistrict(foundDistrict ? foundDistrict.code : "");
    }
  }, [districts, dataEdit]);

  useEffect(() => {
    const fetchPublicProvince = async () => {
      const response = await apiGetPublicProvinces();
      if (response.status === 200) {
        setProvinces(response?.data);
      }
    };
    fetchPublicProvince();
  }, []);

  useEffect(() => {
    setDistrict("");
    const fetchPublicDistrict = async () => {
      const response = await apiGetPublicDistrict(province);
      if (response.status === 200) {
        setDistricts(response.data?.districts);
      }
    };
    province && fetchPublicDistrict();
    !province ? setReset(true) : setReset(false);
    !province && setDistricts([]);
  }, [province]);

  useEffect(() => {
    setPayload((prev) => ({
      ...prev,
      address: `${ district ? district + ', ' : '' }${
        province ? provinces?.find((item) => item.code == province)?.name : ""
      }`,
      province: province
        ? provinces?.find((item) => item.code === province)
            ?.name
        : "",
    }));
  }, [province, district]);
  
  return (
    <div>
      <h2 className="py-4 text-xl font-semibold">Địa chỉ cho thuê</h2>
      <div className="flex flex-col gap-4">
        <div className="flex items-center gap-4">
          <Select
            type="province"
            value={province}
            setValue={setProvince}
            options={provinces}
            label="Tỉnh/Thành phố"
            invalidFields={invalidFields}
            setInvalidFields={setInvalidFields}
          />
          <Select
            reset={reset}
            type="district"
            value={district}
            setValue={setDistrict}
            options={districts}
            label="Quận/Huyện"
            invalidFields={invalidFields}
            setInvalidFields={setInvalidFields}
          />
        </div>
        <InputReadOnly
          label="Địa chỉ chính xác"
          value={`${
            district ? district + ', ' : ""
          }${ province ? provinces?.find((item) => item.code == province)?.name : "" }`}
        />
      </div>
    </div>
  );
};

export default memo(Address);
