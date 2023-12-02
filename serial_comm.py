import serial
import time

# Configure the serial connection
ser = serial.Serial(
    port='COM3',  # Replace 'COMx' with the correct port number
    baudrate=115200,  # Set baud rate
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

# Open the serial port if it's not already open
if not ser.isOpen():
    ser.open()

try:
    while True:
        # Prepare data to be sent - agora como um número de 8 bits
        data_to_send = [1,2,2,3,4,4]  # Replace with your 8-bit integer data (0-255)

        for num in data_to_send:
            # Convertendo o número inteiro de 8 bits em um único byte
            encoded_data = num.to_bytes(1, byteorder='big')

            for byte in encoded_data:
                # Convertendo cada byte em uma string binária
                binary_representation = format(byte, '08b')
                print(binary_representation)

            # Send data
            ser.write(encoded_data)

except KeyboardInterrupt:
    # Close the port when done
    ser.close()
