import datetime
import pymysql

myDB=pymysql.connect(host="localhost",port=3306, user="root",passwd="",database="carparking")
myCursor = myDB.cursor()


def productivity():
    while(True):
        
            
        print("\n\n\t Daily Productivity :- ")
        print("\n\t 1. Total Productivity ")
        print("\n\t 2. Empty Slot Today ")
        print("\n\t 3. Filled Slot Today ")
        print("\n\t 4. Exit ")
        
        ch=int(input("\n\t Enter Command_"))

        if ch==1:
            myCursor.execute("select * from prakings")
            totalParking=list(myCursor.fetchall())
            print("\n\n\t Total Parkings : ",len(totalParking))
            myCursor.execute("select sum(price) from prakings")
            price=list(myCursor.fetchone())
            print("\n\n\t Total Revenue  : ",price[0])
            print("\n\n\t Select \n\t 1. Show all Records \n\t 0. Exit Module ")
            c1=int(input("\n\t Enter Command_"))
            if c1==1:
                print("\n\n\t\t---------Total Parking--------\n\n")
                print("Car Number               Check In           Check Out            Price      ")
                print("--------------------------------------------------------------------------\n")
                
                for x in totalParking:
                    print(x[0],"   ",x[1],"   ",x[2],"   ",x[3])
            elif c1==0:
                pass
        elif ch==2:
            myCursor.execute("select count(status) from slot where status='Null'")
            totalParking=list(myCursor.fetchone())
            print("\n\n\t Total Empty Slots Are : ",totalParking[0])
        elif ch==3:
            myCursor.execute("select count(status) from slot where status='Full'")
            totalParking=list(myCursor.fetchone())
            print("\n\n\t Total Filled Slots Are : ",totalParking[0])
        elif ch==4:
            break

def password():
    usrnm=input("\n\t Enter User Name    : ")
    input("\n\t Enter For Confirm")
    pswd= input("\n\t Enter New Password : ")
    myCursor.execute("update users set pass= '{}' where username='{}'".format(pswd,usrnm))
    myDB.commit()
    print("\n\n\t Password Reset Successfully ")
    myCursor.execute("select * from users where username='{}' and pass='{}'".format(usrnm,pswd))
    user_d=myCursor.fetchone()
    print("\n\t Name           : ",user_d[0])
    print("\n\t User Name      : ",user_d[2])
    print("\n\t Tag            : ",user_d[3])
    print("\n\t User Id        : ",user_d[4])
    print("\n\t Login Password : ",user_d[1])
    input("\n\t Enter For Exit_")
    
    
    

def addAgent():
    print("\n\n\t ---------Add New Agent------------- ")
    print("\n\t Enter All Details :-")
    name= input("\n\t Enter Name                  : ")
    
    usrnm="Agnt_"+input("\n\t User Name Consist OF First Character of First Name and First Charcter of Last Name \n\t Enter User Name(Login Name) : ")
    pswd=  input("\n\t Enter Login Password        : ")

    
    myCursor.execute("INSERT INTO users(name, pass,username,tag) VALUES ('{}','{}','{}','{}')".format(name,pswd,usrnm,"Agent"))
    myDB.commit()
    print("\n\n\t Agent Added Successfully ")
    myCursor.execute("select * from users where username='{}' and pass='{}'".format(usrnm,pswd))
    user_d=myCursor.fetchone()
    print("\n\t Name           : ",user_d[0])
    print("\n\t User Name      : ",user_d[2])
    print("\n\t Tag            : ",user_d[3])
    print("\n\t User Id        : ",user_d[4])
    print("\n\t Login Password : ",user_d[1])
    input("\n\t Enter For Exit_")
    
    #INSERT INTO `users`(`name`, `pass`, `username`, `tag`, `s_id`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5])


def deleteAgent():
    print("\n\n\t\t-------Delete Agent--------")
    usrnm=input("\n\t Enter User Name    : ")
    input("\n\t Enter For Confirm")
    myCursor.execute("select * from users where username='{}'".format(usrnm))
    user_d=myCursor.fetchone()
    print("\n\t Name           : ",user_d[0])
    print("\n\t User Name      : ",user_d[2])
    print("\n\t Tag            : ",user_d[3])
    print("\n\t User Id        : ",user_d[4])
    ch=input("\n\t Press ENTER For Delete and NO for Cancel")
    if ch=="NO":
        pass
    else:
        myCursor.execute("delete from users where username='{}'".format(usrnm))
        myDB.commit()
        print("\n\t User ",(user_d[0]).upper()," Has been deleted Successfully ")
        input("\n\t Press Enter for Continue...")
        
    
    
       
            
def agent():
    while(True):
        print("\n\n\t --------------Agent Support----------------")
        print("\n\t Choose An Option :-")
        print("\n\t 1. Agent Password Reset")
        print("\n\t 2. Add new Agent")
        print("\n\t 3. Delete Agent")
        print("\n\t 4. Exit Module")

        ch=int(input("\n\t Enter Command_"))
        if ch==1:
            password()
        elif ch==2:
            addAgent()
        elif ch==3:
            deleteAgent()
        elif ch==4:
            break



def callAdmin(name):
    
    print("\n\t Hello ",name.upper())
    while(True):       
        print("\n\n\t ADMIN MENU :- ")
        print("\n\t 1. Check Productivity ")
        print("\n\t 2. Agent Support ")
        print("\n\t 3. Logout ")
        choice=int(input("\n\t Enter Command : "))

        if choice==1:
            productivity()
        elif choice==2:
            agent()
        elif choice==3:
            input("\n\n\t ----------Logout Successfully! Have You Good Day Press ENTER--------------")
            break
        else:
            print("\n\t Invalid Command")
        
        
def getTicketNumber():
    myCursor.execute("select * from parkedcar")
    user_d=list(myCursor.fetchall())
    #print(user_d)
    ticket=str(user_d[len(user_d)-1][0])
    tckt=ticket.split("-")
    #print(tckt)
    tckt_num=int(tckt[1])+1
    tckt[1]=str(tckt_num)
    ticket="-"
    ticket=ticket.join(tckt)
    
    return ticket

def getSlot():
    myCursor.execute("select * from slot")
    slots=list(myCursor.fetchall())
    slotnum=0
    for x in slots:
        if x[1]=='NULL':
            slotnum=x[0]
            myCursor.execute("update slot set status= '{}' where slotnum={}".format('Full',int(x[0])))
            myDB.commit()
    
            
            break
        
    return slotnum

    

def parkCar(name,agent):
    print("\n\t Car Parking Entries 5/- per Hour ")
    state=input("\n\t Enter Two Digit State Code :")
    stateNum=input("\n\t Enter Two Digit City Code :")
    preFix=input("\n\t Enter Desired Prefix Number :")
    carNumber=input("\n\t Enter Four digit Car Number :")
    date = datetime.datetime.now()
    
    # Inserting details 
    ticket=getTicketNumber()
    slot=getSlot()
    
    carNumber=(state+" "+stateNum+"  "+preFix+" "+carNumber)
    myCursor.execute("INSERT INTO parkedcar(ticketNumber, carNumber, timeofstart, agentid, slotnum) VALUES ('{}','{}','{}','{}',{})".format(ticket,carNumber,date,agent,slot))
    myDB.commit()
    
    #print("\n\n\t\t------Reciept-----")

    def printReceipt():
        print("\n\n\t-------------Receipt---------------")
        print("\n\t\tCAR PARKING SYSTEM")
        print("\n\tTicket Number   : ",ticket)
        print("\n\tCar Number      : ",carNumber)
        print("\n\tSlot Nummber    : ",slot)
        print("\n\tTime Of Parking : ",date)
        input("\n\n\t-----Press ENTER to Continue-------")
        

    printReceipt()
    #INSERT INTO `parkedcar`(`ticketNumber`, `carNumber`, `mobile`, `timeofstart`, `agentid`) VALUES ('CPS-1','MP 04 CA 5423',8120998286,'2018-01-04 11:09:00.694602',1)
    



def checkOut():
    print("\n\n\t--------Check Out----------")
    slot="CPS-"
    slot+=input("\n\tEnter Ticket Number(Only Number)\n\n\tCPS-")
    if len(input("\n\tPlease ENTER(Any Input) To Confirm or NO for CANCEL\n\n\t-"))==2:
        return
    else:
        myCursor.execute("select * from parkedcar where ticketnumber='{}'".format(slot))
        car=list(myCursor.fetchone())
        #INSERT INTO `prakings`(`carNumber`, `checkIn`, `checkout`, `price`) VALUES ([value-1],[value-2],[value-3],[value-4])
        
        checkIn= (car[2])
        checkOut = datetime.datetime.now()
        carNumber=car[1]
        
        date1 = checkIn
        date2 = checkOut
        totaltime=(date2-date1)
        totaltime=totaltime.total_seconds()/(60**2)
        price=int(totaltime)*5

        if price>75:
            price=75
        elif price<=0:
            price=5
        slotNum = car[4]
        print("\n\n\t Total PRICE(INR)   : ",price,"/-")
        print("\n\n\t Total Praking Time : ",int(totaltime))
        print("\n\n\t Released from Slot : ",slotNum)
        
        # Inserting Data into parkings (Total Parking of CAR PARKING SYSTEM) 
        myCursor.execute("INSERT INTO prakings(carNumber, checkIn,checkout,price) VALUES ('{}','{}','{}',{})".format(carNumber,checkIn,checkOut,price))
        myDB.commit()

        # Delete data from parked car which track current status of parked car 
        myCursor.execute("delete from parkedcar where ticketnumber='{}'".format(slot))
        myDB.commit()

        # Updating slot with NULL from which car get released 
        myCursor.execute("update slot set status= '{}' where slotnum={}".format('NULL',slotNum))
        myDB.commit()
    
        
        
        



def callAgent(name,agent):
    print("\n\t Hello ",name.upper())
    print("\n\n\t -------Car Parking Menu----------")

    while(True):
        print("\n\t 1. Park Car ")
        print("\n\t 2. Check Out ")
        print("\n\t 3. Log Out ")
        choice=int(input("\n\t Enter Command___ "))

        if choice==1:
            parkCar(name,agent)
        elif choice==2:
            checkOut()
        elif choice==3:
            input("\n\n\t ----------Logout Successfully! Have You Good Day Press ENTER--------------")
            break
        else:
            print("\n\t Invalid Command")
        
    
    
    
'''

#INSERT INTO `slot`(`slotnum`, `status`) VALUES ([value-1],[value-2])
for x in range(101):
    myCursor.execute("INSERT INTO slot(slotnum, status) VALUES ({},'{}')".format(x,'NULL'))
    myDB.commit()
''' 


print("\n\n\t\t---------Login Page-----------")
name = input("\n\tEnter User Name : ")
pwd =  input("\tEnter Password  : ")

myCursor.execute("select * from users where username='{}' and pass='{}'".format(name,pwd))
user_d=myCursor.fetchone()

#print(user_d)

if user_d[3]=='Admin':
    callAdmin(user_d[0])
elif user_d[3]=='Agent':
    callAgent(user_d[0],user_d[4])
        



    
