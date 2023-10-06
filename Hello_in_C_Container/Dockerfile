# Use a base image with a C compiler (e.g., gcc)
FROM gcc:latest

# Set the working directory in the container
WORKDIR /mnt/c/Users/scoob/OneDrive/Documents/MesaCollege/ComputerScience/ProgrammingLaunguage/language-ssmedina2/Hello_in_C_Container

# Copy the C source code into the container
COPY hello.c .

# Compile the C program
RUN gcc -o run.exe hello.c

#Set the entry point for the container
CMD ["./run.exe"]

