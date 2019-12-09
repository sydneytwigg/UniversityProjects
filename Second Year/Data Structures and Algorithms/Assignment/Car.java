//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 4

public class Car {
    private String carModel;
    private String plateNum;

    public Car(String model, String plate){
        this.carModel = model;
        this.plateNum = plate;
    }

    public String getCarModel() {
        return carModel;
    }

    public String getPlateNum() {
        return plateNum;
    }

    public void setPlateNum(String plateNum) {
        this.plateNum = plateNum;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    @Override
    public String toString() {
        return "Car Model: " + carModel + ", Plate Number: " + plateNum;
    }
}
