﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ModelContainer : DbContext
    {
        public ModelContainer()
            : base("name=ModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Kontrahent> KontrahentSet { get; set; }
        public virtual DbSet<Adres> AdresSet { get; set; }
        public virtual DbSet<Produkt> ProduktSet { get; set; }
        public virtual DbSet<Jednostka> JednostkaSet { get; set; }
        public virtual DbSet<VAT> VATSet1 { get; set; }
        public virtual DbSet<Faktura> FakturaSet { get; set; }
        public virtual DbSet<ElementFaktury> ElementFakturySet { get; set; }
        public virtual DbSet<FormaZaplaty> FormaZaplatySet { get; set; }
    }
}