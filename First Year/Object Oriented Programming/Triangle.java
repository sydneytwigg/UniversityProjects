
public class Triangle extends Shape {

    private float base, height;

    public Triangle(float base, float height) {
        this.base = base;
        this.height = height;
    }

    @Override
    void calcArea() {
        super.area = 7;
    }

    @Override
    public void displayAll() {
        System.out.println(height + " " + base + " " + area);
    }
}
