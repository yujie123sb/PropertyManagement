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
    
    public partial class w_announcement
    {
        public int id { get; set; }
        public string number { get; set; }
        public string title { get; set; }
        public Nullable<System.DateTime> createtime { get; set; }
        public string contents { get; set; }
        public Nullable<int> uid { get; set; }
        public string nickname { get; set; }
    
        public virtual w_admin w_admin { get; set; }
    }
}