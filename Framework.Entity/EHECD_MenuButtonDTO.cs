using System;
using System.Text;
using System.Collections.Generic;
using System.Data;

namespace Framework.DTO
{
    [Serializable]
    [TableInfo(TableName = "EHECD_MenuButton")]
    public class EHECD_MenuButtonDTO
    {

        /// <summary>
        /// 唯一标识
        /// </summary>
        [FieldInfo(DataFieldLength = 16,FiledName = "ID",Required = true)]
        public Guid? ID
        {
            get; set;
        }

        /// <summary>
        /// 按钮名称
        /// </summary>
        [FieldInfo(DataFieldLength = 20,FiledName = "sButtonName",Required = true)]
        public String sButtonName
        {
            get; set;
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        [FieldInfo(DataFieldLength = 1,FiledName = "bIsDeleted",Required = true)]
        public Boolean? bIsDeleted
        {
            get; set;
        }

        /// <summary>
        /// 排序编号
        /// </summary>
        [FieldInfo(DataFieldLength = 4,FiledName = "iOrder",Required = true)]
        public Int32? iOrder
        {
            get; set;
        }

        /// <summary>
        /// 按钮ICON
        /// </summary>
        [FieldInfo(DataFieldLength = 15, FiledName = "sIcon", Required = true)]
        public string sIcon
        {
            get; set;
        }

        /// <summary>
        /// 按钮标识
        /// </summary>
        [FieldInfo(DataFieldLength = 50, FiledName = "sDataID", Required = true)]
        public string sDataID
        {
            get; set;
        }
    }
}
