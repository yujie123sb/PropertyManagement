//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace WYsystem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class w_packing
    {
        public int id { get; set; }
        public string packing_name { get; set; }
        public string packing_lot { get; set; }
        public Nullable<long> packing_lotID { get; set; }
        public Nullable<int> packing_state { get; set; }
        public Nullable<int> packing_type { get; set; }
        public Nullable<decimal> packing_area { get; set; }
        public Nullable<int> packing_uid { get; set; }
    
        public virtual w_user w_user { get; set; }
    }
}
