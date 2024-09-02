import struct
import numpy as np

def ieee754_binary_to_hex(value):
    # 使用struct.pack将任一的数据类型转换为一个串二进制字节序列
    # 大端字节序（Big-Endian），意味着在地址的递增方向存储更重要的字节（即数字的高位字节在低地址上）。
    # 按照大端字节序一个单精度浮点数
    # 根据给定的格式(fmt)将值v1, v2, ... 打包为字节对象
    binary_string = struct.pack('!f', value)
    #debug
    #print(binary_string)
    # # 将二进制字符串转换为整数
    # ieee754_int = int.from_bytes(binary_string, byteorder='big')
    #
    # # 将整数格式化为32位的二进制字符串
    # ieee754_binary = format(ieee754_int, '032b')
    #
    # # 将32位二进制字符串转换为整数，然后转换为32位的十六进制字符串
    # ieee754_hex = format(int(ieee754_binary, 2), '08x')
    # 将字节序列转换为整数
    ieee754_int = int.from_bytes(binary_string, byteorder='big')


    # 将整数转化为十六进制字符串
    ieee754_hex = format(ieee754_int, '08x')


    return ieee754_hex

def produce_coe_file(vectors,file_path,bram):
    for key, item in vectors.items():
       if (bram):
            with open(file_path+str(key)+'_'+str("rom")+'.coe', 'w') as f:

                f.write("memory_initialization_radix=16;\n")
                f.write("memory_initialization_vector=\n")
                for i in range(len(item)-1,-1, -1):
                     f.write(str(item[i]) + "\n")
       else:
           with open(file_path + str(key) + '_' + str("rom") + '.mem', 'w') as f:
                f.write("@0\n")
                for i in range(len(item)-1,-1, -1):
                     f.write(str(item[i]) + "\n")

def reverse(array):
    row = array.shape[0]
    column = array.shape[1]
    new_array = np.zeros((row,column),dtype=float)
    for i in range(row):
        for j in range(column):
            new_array[i][j] = array[i][column-1-j]
    return new_array

# def reverse_specific_bits(n, bit_count):
#     result = 0
#     original_n = n
#     for i in range(bit_count):
#         # 提取 n 的最低位并加到 result
#         result |= (n & 1) << (bit_count - 1 - i)
#         # 将 n 右移一位
#         n >>= 1
#     # 将原始数值中未被翻转的部分左移 bit_count 位
#     remaining_bits = original_n >> bit_count
#     # 将未翻转的部分和翻转后的部分组合
#
#     return (remaining_bits << bit_count) | result

def shuffle(row_array, bit_count):
    column_count = row_array.shape[1]
    if(bit_count==1):
        for i in range(0, row_array.shape[0], 2):
            for j in range(0, column_count, 2):
                temp = row_array[i][j]
                row_array[i][j] = row_array[i + 1][j + 1]
                row_array[i + 1][j + 1] = temp
    elif(bit_count==2):
        for i in range(0, row_array.shape[0], 2):
            for j in range(0, column_count, 4):
                temp = row_array[i][j]
                row_array[i][j] = row_array[i + 1][j + 2]
                row_array[i + 1][j + 2] = temp

                temp = row_array[i][j + 1]
                row_array[i][j + 1] = row_array[i + 1][j + 3]
                row_array[i + 1][j + 3] = temp
    elif (bit_count == 4):
        for i in range(0, row_array.shape[0], 2):
            for j in range(0, column_count, 8):
                temp = row_array[i][j]
                row_array[i][j] = row_array[i + 1][j + 4]
                row_array[i + 1][j + 4] = temp

                temp = row_array[i][j + 1]
                row_array[i][j + 1] = row_array[i + 1][j + 5]
                row_array[i + 1][j + 5] = temp

                temp = row_array[i][j + 2]
                row_array[i][j + 2] = row_array[i + 1][j + 6]
                row_array[i + 1][j + 6] = temp

                temp = row_array[i][j + 3]
                row_array[i][j + 3] = row_array[i + 1][j + 7]
                row_array[i + 1][j + 7] = temp
    elif (bit_count == 0):
        pass
    else:
        for i in range(0,row_array.shape[0],2):
            for j in range(0,column_count,bit_count*2):
                row_array[i,j:j+bit_count], row_array[i+1,j+bit_count:j+bit_count*2]=row_array[i+1,j+bit_count:j+bit_count*2].copy(), row_array[i,j:j+bit_count].copy()
    return row_array

def pre_process_twiddle_factor(array, point, row_one, row_second, row_third):

    row = array.shape[0]
    column = array.shape[1]
    if(row_one or row_second or row_third):
        result_one = np.zeros((row, column), dtype=float)
        if (np.log2(point) % 5 == 3):
            if(point == 256):
                shuffle_64 = shuffle(array, 64)
                result_one = shuffle(shuffle_64, 32)
            elif(point == 8*1024):
                shuffle_2K = shuffle(array, 2*1024)
                result_one = shuffle(shuffle_2K, 1024)
            elif(point == 256*1024):
                shuffle_64K = shuffle(array, 64*1024)
                result_one = shuffle(shuffle_64K, 32*1024)

        elif (np.log2(point) % 5 == 4):
            if (point == 512):
                shuffle_128 = shuffle(array, 128)
                shuffle_64 = shuffle(shuffle_128, 64)
                result_one = shuffle(shuffle_64, 32)
            elif (point == 16 * 1024):
                shuffle_4k = shuffle(array, 4 * 1024)
                shuffle_2k = shuffle(shuffle_4k, 2 * 1024)
                result_one = shuffle(shuffle_2k, 1 * 1024)
            elif (point == 512 * 1024):
                shuffle_128k = shuffle(array, 128* 1024)
                shuffle_64K = shuffle(shuffle_128k, 64 * 1024)
                result_one = shuffle(shuffle_64K, 32 * 1024)

        elif (np.log2(point) % 5 == 0 and point != 32):
            if(point == 1024):
                shuffle_256 = shuffle(array, 256)
                shuffle_128 = shuffle(shuffle_256, 128)
                shuffle_64 = shuffle(shuffle_128, 64)
                result_one = shuffle(shuffle_64, 32)
            elif(point == 32*1024):
                shuffle_8k = shuffle(array, 8 * 1024)
                shuffle_4k = shuffle(shuffle_8k, 4 * 1024)
                shuffle_2k = shuffle(shuffle_4k, 2 * 1024)
                result_one = shuffle(shuffle_2k, 1 * 1024)

        elif(np.log2(point) % 5 == 2):
            if(point== 128):
                result_one = shuffle(array, 32)
            elif(point == 4*1024):
                result_one = shuffle(array, 1*1024)
            elif(point == 128*1024):
                result_one = shuffle(array, 32*1024)
        elif(np.log2(point) % 5 == 1):
            result_one = array


        if(row_one):
            return result_one

        elif(row_second or row_third):
           result_second = np.zeros((row, column), dtype=float)

           if(point == 8*1024 or point == 4*1024 or point == 2*1024 or point == 16*1024 or point == 32*1024 ):
                 shuffle_512 = shuffle(result_one, 512)
                 shuffle_256 = shuffle(shuffle_512, 256)
                 shuffle_128 = shuffle(shuffle_256, 128)
                 shuffle_64 = shuffle(shuffle_128, 64)
                 result_second = shuffle(shuffle_64, 32)
           elif(point == 256*1024 or point == 128*1024 or point == 64*1024 or point == 512*1024):
                shuffle_16K = shuffle(result_one, 16*1024)
                shuffle_8K = shuffle(shuffle_16K, 8*1024)
                shuffle_4K = shuffle(shuffle_8K, 4*1024)
                shuffle_2K = shuffle(shuffle_4K, 2*1024)
                result_second = shuffle(shuffle_2K, 1*1024)


           if(row_second):
              return  result_second
           elif(row_third):
               result_third = np.zeros((row, column), dtype=float)
               shuffle_512 = shuffle(result_second, 512)
               shuffle_256 = shuffle(shuffle_512, 256)
               shuffle_128 = shuffle(shuffle_256, 128)
               shuffle_64 = shuffle(shuffle_128, 64)
               result_third= shuffle(shuffle_64, 32)
               return result_third


'''
1.将单精度十进制转化为IEEE 754单精度十六进制浮点数
2.十六进制的IEEE 754采用大端排序
3.生成的是多个存储器的coe文件初始化文件，存储器的数量由输入的数组行数决定
4.输入的是一个多维数组，维度由通道数决定
'''

"""
生成旋转因子的选项 twiddel_factor = False/True
将输入的信号序列转化为单精度浮点数的十六进制数
"""


def produce_csv_file(array,num_attribute,file_path,row_id):
    if(num_attribute == 'stage_real_array'):
        np.savetxt(file_path+'Transformed_'+str(point)+f'_{row_id+1}_'+'stage_real_array.csv', array, delimiter=",",fmt='%f')
    else:
        np.savetxt(file_path+'Transformed_'+str(point)+f'_{row_id+1}_'+'stage_img_array.csv', array, delimiter=",",fmt='%f')

def save_array(array, num_attribute):
    """
    初始化保存二维数组的实部或者虚部数值的数组
    用字典来分割为两个一维的向量对应于一个存储器
    """
    row = array.shape[0]
    column = array.shape[1]
    vectors = {}

    for i in range(row):
        key_name = str(point) + '_' + str(num_attribute) + '_vector_' + str(i)
        vectors[key_name] = [" " for k in range(array.shape[1])]  # 初始化一个字符串列表
        for j in range(array.shape[1]):
            vectors[key_name][j] = ieee754_binary_to_hex(array[i][j])

    # 生成coe文件
    produce_coe_file(vectors, file_path, bram)

def save_array_twiddle(array, num_attribute,row_id):
    """
    初始化保存二维数组的实部或者虚部数值的数组
    用字典来分割为两个一维的向量对应于一个存储器
    """
    row = array.shape[0]
    column = array.shape[1]
    vectors = {}

    for i in range(row):
        key_name = str(point) + '_' +'row' +f'_{row_id+1}_'+str(num_attribute) + '_vector_' + str(i)
        vectors[key_name] = [" " for k in range(array.shape[1])]  # 初始化一个字符串列表
        for j in range(array.shape[1]):
            vectors[key_name][j] = ieee754_binary_to_hex(array[i][j])

    # 生成coe文件
    produce_coe_file(vectors, file_path, bram)

if __name__ == '__main__':
    num_attribute = 'real_array'
    # reverse_bit = 7
    twiddel_factor = True
    twiddle_factor_zeros = False
    bram = False
    channel = 1
    for n  in range(0,2,1):
        if n == 1:
            num_attribute = 'stage_real_array'
        else:
            num_attribute = 'stage_img_array'
       #(6,20)
        for i in range(6,20,1):
            point = 2**i
            #######################################旋转因子#########################################################3
            if(twiddel_factor):
                if(twiddle_factor_zeros):
                    file_path = "/Users/anniezfy/PyCharmProject/FFT_Data_Generation/Generate_Memory_File/Twiddle_Factor_Row/"+str(point)+"/Last_Row/"
                    if(num_attribute == 'img_tf_data_in_zero_order'):
                        array = np.zeros((2,point//2),dtype=float)
                    elif(num_attribute == 'real_tf_data_in_zero_order'):
                        array = np.ones((2,point//2),dtype=float)

                    save_array(array, num_attribute)
                else:
                    row_number = np.ceil(i/5)-1
                    # j是行数
                    for j in range(0,int(row_number),1):
                        file_path = "/Users/anniezfy/PyCharmProject/FFT_Data_Generation/Generate_Memory_File/Twiddle_Pipeline/Twiddle_Factor_Pipeline/"+str(point)+"/"

                        # 整除的情况
                        if(i%5==0):
                            array = np.loadtxt(
                                file_path + str(point) + f'_{5 + j * 5}_' + f'{num_attribute}' + '.csv',
                                delimiter=",")
                        # 余数的情况
                        else:
                            array = np.loadtxt(file_path+str(point)+f'_{i%5+j*5}_'+f'{num_attribute}'+'.csv', delimiter=",")
                        # to debug
                        # file_path = "/Users/anniezfy/PyCharmProject/FFT_Data_Generation/Generate_Memory_File/Test_Reverse/"+str(point)+"/"
                        # array = np.zeros((2,point//2),dtype=float)
                        # for i in range(0, array.shape[0], 1):
                        #     for k in range(0, array.shape[1], 1):
                        #             array[i][k] = i * array.shape[1] + k

                        reverse_array = reverse(array)
                        if(j==0):
                            row_one = True
                            row_second = False
                            row_third = False
                            array = pre_process_twiddle_factor(reverse_array, point, row_one, row_second, row_third)
                            produce_csv_file(array, num_attribute,file_path,j)
                            save_array_twiddle(array, num_attribute, j)
                            # print("j = 0")
                        elif(j==1):
                            row_one = False
                            row_second = True
                            row_third = False
                            array = pre_process_twiddle_factor(reverse_array, point, row_one, row_second, row_third)
                            produce_csv_file(array, num_attribute, file_path,j)
                            save_array_twiddle(array, num_attribute, j)
                        elif(j==2):
                            row_one = False
                            row_second = False
                            row_third = True
                            array = pre_process_twiddle_factor(reverse_array, point, row_one, row_second, row_third)
                            produce_csv_file(array, num_attribute,file_path,j)
                            save_array_twiddle(array, num_attribute, j)


           #######################################生成输入数据#########################################################3
            else:
                    # generate the primitive data
                array = np.zeros((channel*2,int(point/(channel*2))),dtype=float)

                row = array.shape[0]
                column = array.shape[1]
                print(f"row:{row},column:{column})")
                if(num_attribute == 'data_real_from_file_fixed_1'):
                    array = np.loadtxt(str(point)+'data_real_from_file_fixed.csv', delimiter=",")
                else:
                    file_path = "/Users/anniezfy/PyCharmProject/FFT_Data_Generation/Generate_Memory_File/Input_Data/" + str(
                        point) + "/"
                    for i in range(0,row,1):
                        for j in range(0,column,1):
                            if (num_attribute == 'real_data_in_nature_order'):
                                array[i][j] = i * column+ j
                                print(array[i][j])
                            elif(num_attribute == 'img_data_in_nature_order'):
                                array[i][j] = 0
                                print(array[i][j])
                    print(array)

                save_array(array, num_attribute)





