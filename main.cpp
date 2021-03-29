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

//-----------------------------------------------------------------
// Bubble sort algorithm
//-----------------------------------------------------------------
void bubble_sort(int data[], int count)
{
    int pass = 1;
    int exchange = 1;

    // Bubble largest value to the right N times
    while ((pass < count) && (exchange > 0))
    {
        // Scan unsorted part of data array
        exchange = 0;
        for (int index = 0; index < count - pass; index++)
        {
            // Swap two data values if out of order
            if (data[index] > data[index + 1])
            {
                int temp = data[index];
                data[index] = data[index + 1];
                data[index + 1] = temp;
                exchange++;
            }
        }
        pass++;
    }
}

//---------------------------------------------------------------
// Selection sort algorithm
//---------------------------------------------------------------
void selection_sort(int data[], int low, int high)
{
    // Put largest unsorted value at end of sorted list
    for (int last = high; last > low; last--)
    {
        // Find index of largest value in unsorted array
        int largest = low;
        for (int index = low + 1; index <= last; index++)
            if (data[index] > data[largest])
                largest = index;

        // Swap with last element in unsorted array
        int temp = data[last];
        data[last] = data[largest];
        data[largest] = temp;
    }
}

int main() {

    int count = 50000;
    int range = count - 1;
    int swaps = count / 10;
    int numbers[count];

    // Create and write random data
//    create_random_data(numbers, 100, 99);
//    write_data("random.txt", numbers, 100);

    // Create and write mostly sorted data
//    create_mostly_sorted_data(numbers, 100, 4);
//    write_data("mostly_sorted.txt", numbers, 100);

    // ----- BUBBLE SORT EXPERIMENTS -----

    // Get start time
    clock_t time1=clock();

    // Bubble sort with random values
    create_random_data(numbers, count, range);
    bubble_sort(numbers, count);

    // Get end time
    clock_t time2=clock();
    double run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Bubble Sort with random data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    // Get start time
    time1=clock();

    // Bubble sort with mostly sorted data
    create_mostly_sorted_data(numbers, count, swaps);
    bubble_sort(numbers, count);

    // Get end time
    time2=clock();
    run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Bubble Sort with mostly sorted data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    // Get start time
    time1=clock();

    // Bubble sort with sorted values
    bubble_sort(numbers, count);

    // Get end time
    time2=clock();
    run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Bubble Sort with sorted data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    // ----- SELECTION SORT EXPERIMENTS -----

    // Get start time
    time1=clock();

    // Selection sort with random values
    create_random_data(numbers, count, range);
    selection_sort(numbers, 0, range);
//    write_data("selection_sort_random.txt", numbers, count);

    // Get end time
    time2=clock();
    run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Selection Sort with random data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    // Get start time
    time1=clock();

    // Selection sort with mostly sorted data
    create_mostly_sorted_data(numbers, count, swaps);
    selection_sort(numbers, 0, range);

    // Get end time
    time2=clock();
    run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Selection Sort with mostly sorted data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    // Get start time
    time1=clock();

    // Bubble sort with sorted values
    selection_sort(numbers, 0, range);

    // Get end time
    time2=clock();
    run_time = (time2-time1)/(double)CLOCKS_PER_SEC;
    cout << "Selection Sort with sorted data" << endl;
    cout << "Run time: " << run_time << " seconds\n";
    cout << endl;

    return 0;

}
