echo "Please Select Employee Type"
echo "1.PartTime 2.FullTime "
read Type
read -p "Enter Login Hours " Loginhours
read -p "Enter Employee PerhourCost " Cost

        if [ $Type==$PartTime ]
        then 

            Salary=$((Loginhours*Cost/2))
            echo "Employee Salary Is $Salary"
        elif [ $Type==$FullTime ]
        then
            Salary=$((Loginhours*Cost))
            echo "Employee Salary Is $Salary"
        else
            echo "Your Input Is Invalid Please Try again"
    fi
