    import UIKit
import Foundation

protocol Airline {
    
    func GetTicket(pay: Bool , phonenumber: Int)
}
struct Flight{
 
    var date: String
    var time : String
}

struct NewReservation{
    var From: String
    var To: String
    var Seat: Int
    var Name: String
    var PhoneNumber: Int
    var Email: String
    var Date: String
    var Time: String
}

class Plane :Airline  {
    
    var FlightScedule: [Flight] = []
    var Reservation :  [NewReservation] = []
    var UniqueReserveNumber: Int
    
    init (){
        self.UniqueReserveNumber = 0
    }
    
    func ReserveNumber ()-> Int{
        
        self.UniqueReserveNumber += 1
        return (self.UniqueReserveNumber)
    }
    
    
   func AddFlight(addflight: Flight){
     FlightScedule.append(addflight)
    }
    
    func NewAReservation(NewReserve: NewReservation ){
        Reservation.append(NewReserve)
    }
    func SearchForReservation(phoneNumber: Int){
        
        var found: Bool = false
        
        for i in 0..<Reservation.count{
        
            if ( Reservation[i].PhoneNumber == phoneNumber){
                print ("\n NEW RESERVE HERE :\n " , Reservation[i])
                found = true
                break
            }
        }
        
    
        if found == false{
            print("\n NO RESERVE HERE")
            
        }
        
    }
    
    func ShowAllResevationInFlight (date: String){
        var found: Bool = false
        for i in 0..<Reservation.count{
            for j in 0..<FlightScedule.count{
                if(Reservation[i].Date == date && FlightScedule[j].date == date){
                    found = true
                    print("\n ALL RESRVATION ON THIS DATE")
                    print("\(Reservation[i].Name) , \(Reservation[i].PhoneNumber), \(Reservation[i].Email)")
                }
        }
        
        }
        if found == false {
            print("\n NO RESERVATION ON THIS DATE")
        }
    }
    
    func GetTicket(pay: Bool,phonenumber: Int){
        var found: Bool = false
     
        for i in 0..<Reservation.count where Reservation[i].PhoneNumber == phonenumber{
            if (pay == true ){
                found = true
                print("\nYOUR RESERVATION IS CONFIRM")
                
                print("YOUR RESERVATION NUMBER :" , ReserveNumber())
                print("DETAILS OF YOUR RESERVATION: \n  \(Reservation[i].Name) , \(Reservation[i].From) - \(Reservation[i].To) \n" )
              
                break
            }
        }
        if found == false {
            print("NO RESULT")
        }
    }

    
    func Cancel(phonenumber: Int){
        var found: Bool = false
        for i in 0..<Reservation.count {
            if( Reservation[i].PhoneNumber == phonenumber){
                found = true
                Reservation.remove(at: i)
                print("RESERVATION IS CANCEL SUCCESFULY \n")
                break
                
            }
            
        }
        if found == false {
            print("NO RESULT")
        }
    }
    
    
    func Edit (phonenumber: Int, email: String){
        var found: Bool = false
        for i in 0..<Reservation.count  {
          if( Reservation[i].PhoneNumber == phonenumber){
                found = true
              Reservation[i].Email = email
              print("\n UPDATE SUCCESFULY \n \(Reservation[i].Name ),\(Reservation[i].From) - \(Reservation[i].To) \n")
                break
            }
            else if Reservation[i].Email == email{
                found = true
                Reservation[i].PhoneNumber = phonenumber
                print("UPDATE SUCCESFULY \n \(Reservation[i].Name ),\(Reservation[i].From) - \(Reservation[i].To) \n")
                break
            }
        }
      if found == false{
           print("NO RESULLT")
      }}
           

    func List (){
        for i in 0..<Reservation.count {
            print(Reservation[i].Name)
        }
    }
}
var MyReservation = Plane()

MyReservation.AddFlight(addflight: Flight( date: "2/02/2022", time: "3:50"))
MyReservation.AddFlight(addflight: Flight( date: "3/03/2022", time: "5:30"))
MyReservation.NewAReservation(NewReserve: NewReservation(From: "jed", To: "med", Seat: 2, Name: "razan ahmad", PhoneNumber: 0508318221, Email: "razanth@gmail.com", Date: "2/02/2022", Time: "3:50"))
MyReservation.NewAReservation(NewReserve: NewReservation(From: "jed", To: "med", Seat: 2, Name: "ahmad khaled", PhoneNumber: 0508318999, Email: "ahmadkh@gmail.com", Date: "3/03/2022", Time: "5:30"))
MyReservation.NewAReservation(NewReserve: NewReservation(From: "jed", To: "med", Seat: 2, Name: "tala ahmad", PhoneNumber: 058831822, Email: "talath@gmail.com", Date: "2/02/2022", Time: "3:50"))

MyReservation.ShowAllResevationInFlight(date: "3/03/2022")

MyReservation.SearchForReservation(phoneNumber: 0508318221)
MyReservation.Edit(phonenumber: 0508318221, email: "razan@hotmail.com")
MyReservation.Cancel(phonenumber: 058831822)
MyReservation.GetTicket(pay: true, phonenumber: 0508318999)
MyReservation.List()

               
          
