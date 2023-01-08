import serial
import re
import numpy as np
import matplotlib.pyplot as plt

gridLength = 50
rows = np.full((gridLength,gridLength), 255, dtype=float)
counter = 49

def correctRowSize(row):
  if len(row) == gridLength:
    print(row)
    return
  elif (len(row) > gridLength):
    #make smaller
    while(len(row) != gridLength):
      del row[0]
      if len(row) != gridLength:
        del row[-1]
    print(row)
    return
  else:
    while(len(row) != gridLength):
      row.insert(0, 255)
      if len(row) != gridLength:
        row.append(255)
    print(row)
    return

with serial.Serial('/dev/cu.usbserial-1410', 9600) as ser:
    while (counter >= 0):
     line = ser.readline()
     lineString = re.sub('\D', ' ', str(line))
     row = lineString.split(' ')
     row = list(filter(None, row))
     if len(row) > 30:
      correctRowSize(row)
      npRow = np.array(row, float)
      if((counter + 1) % 2 == 0):
        rows[counter] = np.flip(npRow)
      else:
        rows[counter] = npRow
      counter = counter - 1
      print(counter+1)
  
# creating a plot
pixel_plot = plt.figure()

# pixel_plot.add_axes()
  
# customizing plot
plt.title("pixel_plot")
pixel_plot = plt.imshow(
  rows, cmap='gray', interpolation='nearest')
  
plt.colorbar(pixel_plot)
  
# save a plot
plt.savefig('pixel_plot.png')
  
# show plot
plt.show()