import serial

NUMBER_BITS_WIDTH = 16
FIXED_POINT_BASE = 10

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

# ...

try:
    while True:
        # Buffer para armazenar os bytes recebidos
        buffer = bytearray()

        # Loop para receber NUMBER_BITS_WIDTH/8 bytes
        while len(buffer) < int(NUMBER_BITS_WIDTH / 8):
            if ser.inWaiting() > 0:
                # Ler exatamente um byte
                incoming_data = ser.read(1)
                buffer.extend(incoming_data)

        # Converter os bytes em um único valor em big-endian
        int_value_64bit = int.from_bytes(buffer, byteorder='big', signed=True)
        print("Received number:", int_value_64bit / FIXED_POINT_BASE)
        binary_representation = ' '.join(f'{bin(byte)[2:].zfill(8)}' for byte in buffer)
        print("Received bytes in binary:", binary_representation)

except KeyboardInterrupt:
    # Close the port when done
    ser.close()
