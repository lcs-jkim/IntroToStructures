import Foundation

/*:
# Authoring Structures
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select two 2D shapes, and author a structure that:
 
 * describes the shape
 * reports on the area
 * reports on the perimeter

 Select two 3D shapes, and author a structure that:

 * describes the shape
 * reports on the surface area
 * reports on the volue

 Finally:

 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Be sure to:

 * make good choices for structure names and property names
 * test your structures by creating instances, and trying the properties out to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each structure.
 
 */
// Begin your work here...

struct triangle {
    
    // Mark properties
    var base: Double
    var height: Double
    var side1: Double
    var side2: Double
    
    // using properties for area
    var area: Double {
        
        return (1/2)*(base * height)
        
    }
    
    // another one for perimeter
    var perimeter: Double {
        
        return base + side1 + side2
        
    }
    
    // fills description with the area and the perimeter
    var Description: String {
        
        return "The area of the triangle is " + String(format: "%.1f", area) + " square units and its perimeter is " + String(format: "%.1f", perimeter) + " units"
    }
}

// Test case #1 - length: 4, width: 3, height: 2 and print description
// Result: The area of the triangle is 4.0 square units and its perimeter is 9.0 units
let triangle1 = triangle(base: 4, height: 2, side1: 2, side2: 3)

print(triangle1.Description)

// Structure for rectangle

struct rectangle {
    
    // Mark Properties
    var length: Double
    var width: Double
    
    // Use properties to find area
    var area1: Double {
        
        return length * width
    }
    
    // Use again for perimeter
    var perimeter1: Double {
        
        return 2 * length + 2 * width
    }
    
    // makes a description with the area and perimeter
    var description1: String {
        
        return "The area of the rectangle is " + String(format: "&.1f", area1) + " square units and " + String(format: "%.1f", perimeter1) + " units "
    }
    
}

// Test case #1 - length: 3, width: 2
// Result: area is 6.0

let rectangle1 = rectangle(length: 3, width: 2)

print(rectangle1.area1)


/*:
 [Previous: Area Example - Rectangle](@previous) | Page 4
 */
