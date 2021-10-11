import UIKit
import Darwin
import Foundation

protocol AirPlane{
    var flightName: String {get}
    var FlightNumber: Int {get}
    var From: String {get}
    var To: String {get}
}

/*class Airplane: Airline{
 var flightName: String
    var FlightNumber: Int
    
    init (Name: String , Number: Int){
        self.FlightNumber = Number
        self.flightName = Name
    }
}*/
class Passenger{
    var Name: String
    var PhoneNumber: Int
    var Address: String
    var Email: String
    
    init (name: String, phonenumber: Int, address: String, email: String){
        self.Name = name
        self.PhoneNumber = phonenumber
        self.Address = address
        self.Email = email
    }
}


struct Reservation  {
    var flightName: String
   var FlightNumber: Int
   var From: String
   var To: String
   var Seat: Int
 //  var ispayment: Bool
   var ReserveNum: Int
    var Name: String
    var PhoneNumber: Int
    var Address: String
    var Email: String

    
}
class R{
    var reservation: [Reservation] = []
    var reserveNum: Int
    init(){
        self.ReserveNum = Reservation(Key)
    }
    func NewReserve ()->String{
        
       
        let  phasenger1:Reservation = Reservation(flightName: "A1254", FlightNumber: 1234, From: "med", To: "jed", Seat: 2, ReserveNum: 204, Name: "razan", PhoneNumber: 0666667, Address: "med- ahmad street", Email: "razan@gmail.com")
        let  phasenger2:Reservation = Reservation(flightName: "A1254", FlightNumber: 1234, From: "med", To: "jed", Seat: 2, ReserveNum: 300, Name: "ahmad", PhoneNumber: 0666667, Address: "med- ahmad street", Email: "ahmad@gmail.com")
        
        reservation.append(phasenger1)
        reservation.append(phasenger2)
        
       
        return "\(phasenger1)\n" + "\(phasenger2)" }
        
    func Cancel (){}
    func Edit (){}
    func GetTicket(ispayment: Bool,reserveNum: Int ){
        
       if(ispayment == true && reserveNum == ReserveNum){
            print("YOUR RESERVATION IS CONFIRM")
          print(" the information of reservation is:\n" + NewReserve())
               
        }
        else{
            print("YOUR RESERVATION NOT CONFIRM")
        }
        
    }
        

}
 var MyReservation = R()
MyReservation.NewReserve()
MyReservation.GetTicket(ispayment: true,ReserveNum: 204 )
