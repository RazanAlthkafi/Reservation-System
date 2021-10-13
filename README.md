# Reservation-System


# is System to reserve airline ticket 
- For each ticket contain:
    -flightName
    -name
    -phone number
    -seat
    -email
    -from
    -to
    
    # usage
    - create uniqe id for reserve number func ReserveNumber ()-> Int
    - create new reservation func NewAdd(flightName: String,From: String,To: String,Seat: Int,Name: String,PhoneNumber: Int,Email: String )
    - search about reservation by phone number func Search(phoneNumber: Int)
    - cancel reservation by phone number func Cancel (phonenumber: Int)
    - edit reservation information by phone number or email  func Edit (phonenumber: Int, email: string)
    - get ticket of the reservation if is  confirm  func GetTicket(pay: Bool,phonenumber: Int)
    
    #favorite function work
    - cancel reservation 
