import UIKit
import Darwin
import Foundation

struct Reservation  {
    var flightName: String
    var FlightNumber: Int
    var From: String
    var To: String
    var Seat: Int
    var ReserveNum: Int
    var Name: String
    var PhoneNumber: Int
    var Address: String
    var Email: String

    

init(flightName: String,FlightNumber: Int,From: String,To: String,Seat: Int,ReserveNum: Int,Name: String,PhoneNumber: Int,Address: String,Email: String){
    self.flightName = ""
    self.PhoneNumber = 0
    self.From = ""
    self.To = ""
    self.Name = ""
}

}

class R {
   static var reservation = [Reservation]()
   
  
    
     func NewAdd(Add: Reservation){
      print (Reservation(flightName: , FlightNumber: <#T##Int#>, From: <#T##String#>, To: <#T##String#>, Seat: <#T##Int#>, ReserveNum: <#T##Int#>, Name: <#T##String#>, PhoneNumber: <#T##Int#>, Address: <#T##String#>, Email: <#T##String#>))
       
        /*let RESERVATI9ON :Reservation = Reservation(flightName: flightName, FlightNumber: FlightNumber, From: From, To: To, Seat: Seat, ReserveNum: ReserveNum, Name: Name, PhoneNumber: PhoneNumber, Address: Address, Email: Email)
        
           /* print("the information of reservation is (FlightName: \(flightName), FlightNumber: \(FlightNumber),From: \(From), To: \(To),SeatNumber: \(Seat),ReserveNum: \(ReserveNum),Name: \(Name), PhoneNumber: \(PhoneNumber), Address :\(Address),Email: \(Email))"*/
    
      print(RESERVATI9ON)*/
        
        }
        
    
    func NewReserve  (flightName: String,
                      FlightNumber: Int,
                      From: String,
                      To: String,
                      Seat: Int,
                      ReserveNum: Int,
                      Name: String,
                      PhoneNumber: Int,
                      Address: String,
                      Email: String){
       /* for i in 0..<reservation.count{
        if ( reservation[i].ReserveNum == reserveNum){
            print (reservation[i])
        }
       
        else {
            print ("THERE IS NO RESERVE")
        }
        }
        }}*/
    }
    
    func Cancel (reserveNum: Int){
      /* for i in 0..<Reservation {
            if( reservation[i].ReserveNum == reserveNum){
                reservation.remove(at: i)
                print("THIS RESERVATION IS CANCEL")
                //print(List())
                break
                
            }}}*/
    
   /* func Edit (reserveNum: Int){
        for i in 0..<reservation.count {
            if( reservation[i].ReserveNum == reserveNum){
                reservation[i].PhoneNumber = 0508318221
                print("HAS BEEN UPDATE \n::\(reservation[i])")
                break
                
            }}}*/
    func GetTicket(pay: Bool,reserveNum: Int){
        print("\nYOUR MUST PAID TO CONFIRM YOR RESERVATION ")
      
      /*  for i in 0..<reservation.count {
            
            reservation[i].ReserveNum = reserveNum
            if(pay == true && reservation[i].ReserveNum == reserveNum ){
            print("YOUR RESERVATION IS CONFIRM")
            print(" the information of reservation is:")
            print(reservation[i])}
            
        else{
            
            // Cancel(reserveNum: reserveNum1)
            print("YOUR RESERVATION NOT CONFIRM")
            
        }}*/
      
        }
        
    }
        
}


var MyReservation = R()
MyReservation.NewAdd(Add: <#T##Reservation#>)
//MyReservation.NewAdd(flightName: "t", FlightNumber: 123, From: "med", To: "jed", Seat: 2, ReserveNum: 200, Name: "razan", PhoneNumber: 0566666, Address: "med-352", Email: "razan@gmail.com")
//MyReservation.NewAdd(flightName: "t", FlightNumber: 123, From: "med", To: "jed", Seat: 2, ReserveNum: 300, Name: "razan", PhoneNumber: 05666566, Address: "med-352", Email: "razan@gmail.com")
//MyReservation.NewReserve(reserveNum: 444)
//MyReservation.
//MyReservation.GetTicket(pay: true, reserveNum: 300)
//MyReservation.Cancel(reserveNum: 500)
//MyReservation.Edit(reserveNum: 333)













