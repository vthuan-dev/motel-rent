import React from "react";
import { CreatePost } from "../containers/System";

const UpdatePost = ({ setIsEdit }) => {
  return (
    <div
      className="absolute top-0 bottom-0 left-0 right-0 flex justify-center bg-overlay-70"
      onClick={(e) => {
        e.stopPropagation();
        setIsEdit(false);
      }}
    >
      <div
        className="w-full overflow-y-auto bg-white max-w-1100"
        onClick={(e) => {
          e.stopPropagation();
        }}
      >
        <CreatePost isEdit />
      </div>
    </div>
  );
};

export default UpdatePost;
