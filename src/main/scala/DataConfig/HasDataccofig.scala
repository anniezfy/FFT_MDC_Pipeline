package DataConfig

import chisel3._
import chisel3.experimental._
import org.scalatest.DynaTags


trait HasDataConfig {
  /* 定点数的位宽定义 */
  val DataWidth = 32
  val BinaryPoint = 16
  val Float32 = 32
  val Double = 64
  /* 数据类型选择 */
  val FloatPointWdith: Int = Float32
  val FloatPointSwitch: Boolean = true // 是否为浮点数



  val zero = if (FloatPointSwitch) 0.U else 0.F(DataWidth.W, BinaryPoint.BP)

  /* 旋转因子存储文件，FP后缀存储浮点数旋转因子 */
  //  val memory_fft_re = if(FloatPointSwitch) (0 until 9).map(t=> s"memory_twiddle_${scala.math.pow(2,t+2).toInt}_point_FP_re.txt")
  //  else (0 until 9).map(t=> s"memory_twiddle_${scala.math.pow(2,t+2).toInt}_point_re.txt")
  //  val memory_fft_im = if(FloatPointSwitch) (0 until 9).map(t=> s"memory_twiddle_${scala.math.pow(2,t+2).toInt}_point_FP_im.txt")
  //  else (0 until 9).map(t=> s"memory_twiddle_${scala.math.pow(2,t+2).toInt}_point_im.txt")


  val input_bank_a_re = (1 until 6).map(t=> s"input_bank${t}_a_re.txt")
  val input_bank_a_im = (1 until 6).map(t=> s"input_bank${t}_a_im.txt")
  val input_bank_b_re = (1 until 6).map(t => s"input_bank${t}_b_re.txt")
  val input_bank_b_im = (1 until 6).map(t => s"input_bank${t}_b_im.txt")
}

/**
 * 复数接口定义
 * @param DataType 参数列表，数据类型，浮点BIts or 定点FixedPoint
 * @tparam T 泛型参数 属于Data的子类 （）参数列表
 */
class Complex[T <: Data](DataType : T) extends Bundle{
  /* 复数的 实部，虚部*/
  val re:T= Input(DataType)
  val im:T = Input(DataType)

}

/**
 * 复数运算接口抽象，两输入，一输出
 * @param DataType 参数
 * @tparam T 抽象数据类型
 */
class ComplexOperationIO[T <: Data](DataType: T) extends Bundle{
  val op1: Complex[T] = Input(new Complex(DataType))
  val op2: Complex[T] = Input(new Complex(DataType))
  val res: Complex[T] = Output(new Complex(DataType))
  val ready: Bool = Input(Bool())
  val valid: Bool = Output(Bool())
}

/**
 * 复数乘累加接口抽象
 * @param DataType 数据类型
 * @tparam T 抽象数据类型
 */
class ComplexAddMulOperationIO[T <: Data](DataType : T) extends ComplexOperationIO(DataType) {
  /**
   * @param ready 外部数据ok
   * @param w 旋转因子操作数
   * @param op1 操作数1
   * @param op2 操作数2
   * @param res 乘累加结果
   * @param valid 计算完成信号
   */
  val w: Complex[T] = Input(new Complex(DataType))
  val s: Bool = Input(Bool())
}