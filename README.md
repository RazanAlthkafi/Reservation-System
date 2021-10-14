# Reservation-System


# is System to reservation airline ticket 
- For each ticket contain:
    -name
    -phone number
    -seat
    -email
    -from
    -to
    -date
    -time
    
    # usage
    - create uniqe id for reserve number func ReserveNumber ()-> Int
    - add new FlightSchedule unc AddFlight(addflight: Flight) -date/time
    - create new reservation func NewAReservation(NewReserve: NewReservation ) -name/phonenumber/from/to/date/time/seat/email
    - search about reservation by phone number func   func SearchForReservation(phoneNumber: Int)
    - search for all reservaion on specific date func ShowAllResevationInFlight (date: String)
    - cancel reservation by phone number func Cancel (phonenumber: Int)
    - edit reservation information by phone number or email  func Edit (phonenumber: Int, email: string)
    - get ticket of the reservation if is  confirm  func GetTicket(pay: Bool,phonenumber: Int)
    - get list of all reservation func List ()
    
    #favorite function work
    - cancel reservation 
