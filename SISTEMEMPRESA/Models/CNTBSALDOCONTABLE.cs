//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SISTEMEMPRESA.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class CNTBSALDOCONTABLE
    {
        public int IdCntbSaldoContable { get; set; }
        public Nullable<int> IdCntbRegDetalleCont { get; set; }
        [Display(Name = "Periodo")]
        public short periodo { get; set; }
        [Display(Name = "Numero Cabecera")]
        public int NumeroLote { get; set; }
        [Display(Name = "Codigo Cuenta")]
        public int CuentaContable { get; set; }
        public Nullable<decimal> SaldoContableDebe { get; set; }
        public Nullable<decimal> SaldoContableHaber { get; set; }
        [Display(Name = "Estado")]
        public string estado { get; set; }
    
        public virtual CNTBREGDETALLECONT CNTBREGDETALLECONT { get; set; }
    }
}
