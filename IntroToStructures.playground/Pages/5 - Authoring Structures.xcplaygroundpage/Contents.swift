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

// Test case #2 - base: 5, height: 2, side1: 3, side2: 2, result: 10.0
let triangle2 = triangle(base: 5, height: 2, side1: 3, side2: 2)

print(triangle2.perimeter)

// Test case #3 - base: 5, height: 2, side1: 3, side2: 2, result: 5.0
let triangle3 = triangle(base: 5, height: 2, side1: 3, side2: 2)
print(triangle3.area
)

// Structure for rectangle

struct rectangle {
    
    // Mark Properties
    var length: Double
    var width: Double
    
    // Use properties to find area
    var area: Double {
        
        return length * width
    }
    
    // Use again for perimeter
    var perimeter: Double {
        
        return 2 * length + 2 * width
    }
    
    // makes a description with the area and perimeter
    var description: String {
        
        return "The area of the rectangle is " + String(format: "&.1f", area) + " square units and its perimeter is " + String(format: "%.1f", perimeter) + " units "
    }
    
}

// Test case #1 - length: 3, width: 2, result: 6.0
let rectangle1 = rectangle(length: 3, width: 2)

print(rectangle1.area)

// Test case #2 - length: 4, width: 2, result: 12.0
let rectangle2 = rectangle(length: 4, width: 2)

print(rectangle2.perimeter)

// Test case #3 - lenght: 4, width: 2, result: "The area of the rectangle is 8.0 square units and its perimeter is 12.0 units
let rectangle3 = rectangle(length: 4, width: 2)

print(rectangle3.description)


// Structure for cone

struct cone {
    
    // Mark Properties
    var radius: Double
    var height: Double
    var sideLength: Double
    
    // Use properties to find surface area
    
    var totalSurfaceArea: Double {
        
        let surfaceArea = (Double.pi * pow(radius, 2)) + (Double.pi * radius * sideLength)
        
        return surfaceArea.rounded()
    
    }
   
    var volume: Double {
        
        return (Double.pi * pow(radius, 2) * height)/3
    }
    
    var description: String {
        
        return "The surface area of the cone is " + String(format: "&.1f", totalSurfaceArea) + " square units and its volume is " + String(format: "&.1f", volume)
    }
    
}

// Test case #1 - radius: 3, height: 2, sideLength: 5, result: 75

let cone1 = cone(radius: 3, height: 2, sideLength: 5)

print(cone1.totalSurfaceArea)

/*:
 [Previous: Area Example - Rectangle](@previous) | Page 4
 */
