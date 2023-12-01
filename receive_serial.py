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
        # Receiving data
        if ser.inWaiting() > 0:
            # Ler exatamente um byte
            incoming_data = ser.read(1)
            
            # Converter o byte em um inteiro
            int_value = int.from_bytes(incoming_data, byteorder='big')
            
            print("Received:", int_value)

except KeyboardInterrupt:
    # Close the port when done
    ser.close()
