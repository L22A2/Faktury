//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Faktury
{
    using System;
    using System.Collections.Generic;
    
    public partial class Produkt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Produkt()
        {
            this.ElementFaktury = new HashSet<ElementFaktury>();
        }
    
        public int Id { get; set; }
        public string Nazwa { get; set; }
        public decimal CenaNetto { get; set; }
    
        public virtual VAT VAT { get; set; }
        public virtual Jednostka Jednostka { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElementFaktury> ElementFaktury { get; set; }
    }
}
