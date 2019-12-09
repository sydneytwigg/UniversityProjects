//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

package question4;

//class to create car instance of each car
public class Car {
    private String carModel;
    private String plateNum;

    public Car(String model, String plate){
        this.carModel = model;
        this.plateNum = plate;
    }

    //getter
    public String getCarModel() {
        return carModel;
    }

    //setter
    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    //getter
    public String getPlateNum() {
        return plateNum;
    }

    //setter
    public void setPlateNum(String plateNum) {
        this.plateNum = plateNum;
    }

    //toString method to display
    @Override
    public String toString() {
        return "Car Model: " + carModel + ", Plate Number: " + plateNum;
    }
}
