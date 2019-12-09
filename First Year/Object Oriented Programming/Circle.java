
public class Circle extends Shape {

    private float radius;

    public Circle(float radius) {
        this.radius = radius;
    }

    @Override
    void calcArea() {
        super.area = 7;
    }

    @Override
    public void displayAll() {
        System.out.println(radius + " " + area);
    }
}
