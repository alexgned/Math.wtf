public class MyArrayList<T> {

    private Object[] ar;
    private int size;

    MyArrayList() {
        ar = new Object[16];
    }

    void add(T element) {
        if (size == ar.length) {
            Object[] temp = new Object[ar.length * 2];
            System.arraycopy(ar, 0, temp, 0, ar.length);
            ar = temp;
        }
        ar[size++] = element;
    }

    T at(int index) {
        if (index < 0 || index >= size)
            throw new ArrayIndexOutOfBoundsException();
        return (T) ar[index];
    }

    int getSize() {
        return size;
    }

}
