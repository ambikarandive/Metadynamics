#!/bin/bash

file2="efield0.txt"  # Name of the original file
num_duplicates=1 # Number of duplicate files
num_duplicates1=70
output_file="inputfiles2.txt" 
count=0

increment_value=1              # Increment value for replacement
start_number=1 
incremented_number=$((start_number + i - 1))
elfield_value=1
restart_value=1


for ((i=1; i<=num_duplicates; i++)); do
    rand_num1=$(shuf -i 10000-99999 -n 1)  # Generate a random number between 1000000 and 9999999
    rand_num2=$(shuf -i 100000-999999 -n 1)  # Generate another random number between 1000000 and 9999999
    
    main_value=$((elfield_value+(i-1)))
       
    replaced_value=$((increment_value + (i-1)))
    
    incremented_number=$((start_number + i - 1))
    
    restarted_value=$((start_number + i - 1))


    
    # Create a new file name with the random numbers
    
    for ((j=1; j<=num_duplicates1; j++)); do
    	count=$((count+1))
    	rand_num1=$(shuf -i 10000-99999 -n 1)  # Generate a random number between 1000000 and 9999999
    	rand_num2=$(shuf -i 100000-999999 -n 1)
    	new_file_efield="efield_$((count)).txt"
    # Use sed to replace the two specific numbers in the original file and save it as the new file
    	sed -e "s/read_1_1/read_${i}_${j}/g" -e "s/762397/${rand_num2}/g;s/762397/${rand_num2}/g" -e "s/53464/${rand_num1}/g;s/53464/${rand_num1}/g" -e "s/log.1/log.${count}/g" -e "s/plumed_1/plumed_${count}/g" -e "s/output_1/output_${count}/g" -e "s/elfield_1/elfield_${count}/g" -e "s/restartmain_1/restartmain_${count}/g" "$file2" > "$new_file_efield"
    
     # Print the name of the new file
    #echo "New file created: $new_file"
    
    #echo "\"$new_file\"" >> "$output_file"
    
    echo '"'$new_file'"' >> "$output_file"
    
    done	
done
