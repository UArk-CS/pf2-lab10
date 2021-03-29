#include <iostream>
#include <fstream>
using namespace std;

//------------------------------------------------------------------
// Initialize data array with random values
//------------------------------------------------------------------
void create_random_data(int data[], int count, int range)
{
    // Put specified count of random numbers into data array
    for (int index = 0; index < count; index++)
        data[index] = rand() % range;
}

//------------------------------------------------------------------
// Initialize data array with mostly sorted values
//------------------------------------------------------------------
void create_mostly_sorted_data(int data[], int count, int swaps)
{
    // Put sorted data values into array
    for (int index = 0; index < count; index++)
        data[index] = index;

    // Shuffle data by swapping random pairs of values
    for (int index = 0; index < swaps; index++)
    {
        int pos1 = rand() % count;
        int pos2 = rand() % count;
        int temp = data[pos1];
        data[pos1] = data[pos2];
        data[pos2] = temp;
    }
}

//------------------------------------------------------------------
// Write data array to output file
//------------------------------------------------------------------
void write_data(string name, int data[], int count)
{
    // Open output file
    ofstream dout;
    dout.open(name.c_str());
    if (dout.fail())
        cout << "Error: could not open output file\n";

    // Write the data
    dout << count;
    for (int i = 0; i < count; i++)
    {
        if (i % 20 == 0)
            dout << endl;
        dout << data[i] << " ";
    }

    // Close the file
    dout.close();
}

int main() {

    int numbers[100];

    // Create and write random data
    create_random_data(numbers, 100, 99);
    write_data("random.txt", numbers, 100);

    // Create and write mostly sorted data
    create_mostly_sorted_data(numbers, 100, 4);
    write_data("mostly_sorted.txt", numbers, 100);

    return 0;

}
