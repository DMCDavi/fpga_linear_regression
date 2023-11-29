import serial
import time

# Configure the serial connection
ser = serial.Serial(
    port='COM3',  # Replace 'COMx' with the correct port number
    baudrate=115200,  # Set baud rate
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS,
    timeout=1
)

# Open the serial port if it's not already open
if not ser.isOpen():
    ser.open()

try:
    while True:
        # Prepare data to be sent
        data_to_send = '23'  # Replace with your data

        encoded_data = data_to_send.encode()

        for byte in encoded_data:
            # Convertendo cada byte em uma string binária
            binary_representation = format(byte, '08b')
            print(binary_representation)
        # Send data
        ser.write(encoded_data)

        # Receiving data
        if ser.inWaiting() > 0:
            incoming_data = ser.readline()
            print("Received:", incoming_data.decode().strip())

        # Wait a bit before sending the next data
        time.sleep(1)
except KeyboardInterrupt:
    # Close the port when done
    ser.close()
