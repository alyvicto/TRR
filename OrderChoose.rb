class OrderChoose
  def whosFirst(names_file)
    f=File.open("#{names_file}.txt").read
    names=Array.new
    order=Array.new
    order[0]="Michael M"
    i=1
    names=f.split("\n")
    while names.length>0 do
      name=names.sample
      order[i]=name
      names.delete(name)
      i+=1
    end
    puts order
  end
end
