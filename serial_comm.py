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

try:
    while True:
        # Prepare data to be sent - agora como um número de 64 bits
        data_to_send = [1, 2, 2, 3, 4, 4] 
        # data_to_send = [2, 3, 1, 4, 5, 2]

        for num in data_to_send:
            # Convertendo o número inteiro de 64 bits em um conjunto de bytes
            encoded_data = (num * FIXED_POINT_BASE).to_bytes(int(NUMBER_BITS_WIDTH / 8), byteorder='big')

            # Send data in chunks of 8 bytes
            for i in range(0, len(encoded_data), 8):
                chunk = encoded_data[i:i+8]
                ser.write(chunk)

                # Para propósitos de depuração, imprime a representação binária de cada chunk
                for byte in chunk:
                    binary_representation = format(byte, '08b')
                    print(binary_representation)

except KeyboardInterrupt:
    # Close the port when done
    ser.close()
