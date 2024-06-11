# 工作目录为最高层级的目录
import numpy as np
import os
a3=np.zeros((300,300))
np.save(r'.\data\a3.npy',a3) #ok
np.save('./data/a3.npy',a3) # ok
np.save('data/a3.npy',a3) #ok
workenv='./exercise'
dataenv='data' #ok is the same with './data'
os.makedirs(dataenv+'/train.txt')
os.makedirs(workenv+'/train.txt')
print(np.load('data/a3.npy').shape)