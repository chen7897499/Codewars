#这题不能使用原来的zip方法, 被去掉了

class Array
  def zip(arr, &block)
    # Good Luck!
    result = []
    bigarray = []
    lala = self
    if lala.length > arr.length
       lala = lala[0,arr.length]
    elsif arr.length > lala.length
      arr = arr[0,lala.length]
    end
    bigarray << lala
    bigarray << arr
    base = bigarray.transpose

    
    base.each do |a,b|
      if a.nil? || b.nil?
        break;
      end
      result << yield(a,b)
    end
    result
  end
end
