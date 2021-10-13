import UIKit
import Darwin
import Foundation




struct NewReservation  {
    var flightName: String
    var From: String
    var To: String
    var Seat: Int
    var Name: String
    var PhoneNumber: Int
    var Email: String
    
    
}


class AirLine {
    
    var reservation : [NewReservation] = []
    var UniqueReserveNumber: Int
    
    init (){
        self.UniqueReserveNumber = 0
    }
    
    
    func ReserveNumber ()-> Int{
        
        self.UniqueReserveNumber += 1
        return (self.UniqueReserveNumber)
    }
    
    func NewAdd(flightName: String,From: String,To: String,
                Seat: Int,Name: String,PhoneNumber: Int,Email: String ){
        let x = NewReservation(flightName: flightName , From: From, To: To, Seat: Seat, Name: Name, PhoneNumber: PhoneNumber, Email: Email)
        reservation.append(x)
    }
    
    func Search(phoneNumber: Int){
        
        var found: Bool = false
        
        for i in 0..<reservation.count{
        
            if ( reservation[i].PhoneNumber == phoneNumber){
                print (" NEW RESERVE HERE " , reservation[i])
                found = true
                break
            }
        }
        if found == false{
            print("NO RESERVE HERE")
            
        }
        
    }
    
    
    func Cancel (phonenumber: Int){
        var found: Bool = false
        for i in 0..<reservation.count {
            if( reservation[i].PhoneNumber == phonenumber){
                found = true
                reservation.remove(at: i)
                print("THIS RESERVATION IS CANCEL\n")
                break
                
            }
            
        }
        if found == false {
            print("NO RESULT")
        }
    }
    func Edit (phonenumber: Int, email: String){
        var found: Bool = false
        for i in 0..<reservation.count  {
          if( reservation[i].PhoneNumber == phonenumber){
                found = true
              reservation[i].Email = email
                print("UPDATE SUCCEFULY succesfuly \n: \(reservation[i]) \n")
                
            }
            else if reservation[i].Email == email{
                found = true
                reservation[i].PhoneNumber = phonenumber
                print("UPDATE SUCCEFULY succesfuly \n \(reservation[i]) \n")
                
            }
        }
      if found == false{
           print("NO RESULLT")
        }
           
            }
    
    
    func GetTicket(pay: Bool,phonenumber: Int){
        var found: Bool = false
     
        for i in 0..<reservation.count where reservation[i].PhoneNumber == phonenumber{
            if (pay == true ){
                found = true
                print("YOUR RESERVATION IS CONFIRM")
                
                print("YOUR RESERVATION NUMBER :" , ReserveNumber())
                print("DETAILS OF YOUR RESERVATION: \n   \(reservation[i]) \n" )
                break
            }
        }
        if found == false {
            print("NO RESULT")
        }
    }
    
    func List (){
        for i in reservation {
            print(i)
        }
    }
    
}





var MyReservation = AirLine()

MyReservation.NewAdd(flightName: "A" , From: "med", To: "jed", Seat: 2, Name: "razan", PhoneNumber: 050833227, Email: "razan@gmail.com")
MyReservation.NewAdd(flightName:"B", From: "med", To: "ryd", Seat: 3,  Name: "ahmad", PhoneNumber: 064321234, Email: "ahmadk@gmail.com")
MyReservation.NewAdd(flightName: "C",From: "med", To: "makkah", Seat: 4, Name: "sara", PhoneNumber: 0643212322, Email: "sara@gmail.com")
MyReservation.Search(phoneNumber: 050833227)

MyReservation.GetTicket(pay: true, phonenumber: 0643212322)
MyReservation.Edit(phonenumber: 050833227, email:"razan@gmail.com")
MyReservation.Cancel(phonenumber:050833227)
MyReservation.List()











