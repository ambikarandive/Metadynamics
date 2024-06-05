#!/bin/bash

# Define the number of files you want to create
num_files=70

# Loop through the range of numbers to create files
for ((i=1; i<=num_files; i++)); do
    # Define the new file name
    new_file_name="plumed_${i}.dat"
    # Read the content of the original file and replace "COLVER_0" with "COLVAR_i"
    sed -e "s/HILLS_0/HILLS_${i}/g" -e "s/COLVAR_0/COLVAR_${i}/g" plumed_0.dat > "$new_file_name"
    echo "Created file: $new_file_name"
done

echo "All files created successfully."

