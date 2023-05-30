// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract StructType
{
    struct car
    {
        string model;
        uint year;
        address owner;
    }
    car[] public cars;
    function carmodels() external
    {
        // 3 ways to initialize a struct
        car memory Thar = Car("Thar",2016,msg.sender);
        // This is the first way to initialize struxcct

        Car memory BMW = Car(
            {
                model:"BMW",
                year:1995,
                owner:msg.sender
            }
        );
        //This is the second way to initialize struct
        Car memory Honda;
        Honda.model = "Honda";
        Honda.year = 1949;
        Honda.owner = msg.sender;
        // this is the second way to initializze struct
        Car memory Honda;
        Honda.model = "Honda";
        Honda.year = 1949;
        Honda.owner = msg.sender;
        // this is the third way to intialize struct
        //push to array
        cars.push(Thar);
        cars.push(BMW);
        cars.push(Honda);
        // We are adding the  cars to Car[]
        cars.push(Car("Maruti Suzuki",2000,msg.sender));
        //using single line also we can push the car into the array.
        // Get reference to car struct stored in the array cars at index 0
        Car storage car = cars[0];
        // Update
        car.year = 2000;

        {
            function registration(string memory _model,uint _year) external
            {
                cars.push(Car(
                    {
                        model:_model,
                        year:_year,
                        owner:msg.sender
                    }));
            }
            function get(uint _index) external view returns (string memory model, uint year,address owner)
            {
                Car storage car = cars[_index];
                return (car.model,car.year,car.owner);

            }
            function transfer(uint _index,address _owner) external
            {
                cars[_index].owner = _owner;
            }
        }
    }
}
