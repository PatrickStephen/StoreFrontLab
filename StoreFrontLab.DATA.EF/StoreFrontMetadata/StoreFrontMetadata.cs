using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;//added for metadata and validation

namespace StoreFrontLab.DATA.EF//.StoreFrontMetadata name must match namespace of classes these partial classes will buddy up with.
{

    public class CategoryMetaData
    {
        [Required(ErrorMessage = "This field is required")]
        [Display(Name = "Category")]
        [StringLength(50, ErrorMessage = "Please use a maximum of 50 characters.")]
        public string CategoryType { get; set; }
    }

    [MetadataType(typeof(CategoryMetaData))]
    public partial class Category
    {

    }

    public class EmployeeMetaData
    {
        [Required(ErrorMessage = "This field is required")]
        [Display(Name = "First Name")]
        [StringLength(15, ErrorMessage = "Please use a maximum of 15 characters.")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "This field is required")]
        [Display(Name = "Last Name")]
        [StringLength(15, ErrorMessage = "Please use a maximum of 15 characters.")]
        public string LastName { get; set; }
    }

    [MetadataType(typeof(EmployeeMetaData))]
    public partial class Employee
    {
        [Display(Name = "Full Name")]
        public string FullName { get { return FirstName + " " + LastName; } }
    }

    public class ItemMetaData
    {
        [Required(ErrorMessage = "This field is required")]
        [Display(Name = "Item Name")]
        [StringLength(50, ErrorMessage = "Please use a maximum of 50 characters.")]
        public string ItemName { get; set; }

        [Required(ErrorMessage = "This field is required")]
        [DisplayFormat(DataFormatString = "{0:c}")]
        public Nullable<decimal> Price { get; set; }
        

        public string Author { get; set; }
        
        public string ItemImage { get; set; }

        public string Description { get; set; }
    }

    [MetadataType(typeof(ItemMetaData))]
    public partial class Item
    {

    }

    public class DepartmentMetaData
    {
        [Display(Name = "Department Name")]
        [StringLength(50, ErrorMessage = "Please use a maximum of 50 characters.")]
        public string DepartmentName { get; set; }
    }

    [MetadataType(typeof(DepartmentMetaData))]
    public partial class Department
    {

    }

    public class StatusMetaData
    {
        [Display(Name = "Status Name")]
        [StringLength(25, ErrorMessage = "Please use a maximum of 25 characters.")]
        public string StatusName { get; set; }
    }

    [MetadataType(typeof(StatusMetaData))]
    public partial class Status
    {

    }

    public class PositionMetaData
    {
        [Display(Name = "Position Name")]
        [StringLength(75, ErrorMessage = "Please use a maximum of 75 characters.")]
        public string PositionName { get; set; }
    }

    [MetadataType(typeof(PositionMetaData))]
    public partial class Position
    {

    }
}
