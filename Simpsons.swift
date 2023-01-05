

import Foundation
import UIKit


class Simpsons{
    
    
    enum FamilyRole {
        
    case father
    case mother
    case son
    case daughter
    case baby
        
    }
    
    
    var name : String
    var job : String
    var image : UIImage
    var role : FamilyRole
    
    
    init(nameInit : String, jobInit : String, imageInit :UIImage, roleInit: FamilyRole){
        
        name = nameInit
        job = jobInit
        image = imageInit
        role = roleInit
    }
    
    
}
