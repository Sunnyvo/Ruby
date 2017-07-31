class FilesController < ApplicationController
  def index
    if params[:next].present?
      if (File.file?(File.join(params[:next])))
        puts "file!"
        temp = File.join(params[:next]).split("/").pop
        puts "temp: #{temp}"
        @content = File.readlines(temp)   
      end  
      path = File.join(params[:next],"*")
      puts "path-after: #{path}"
      @files = Dir[path]
      path = params[:next].split("/")
      path.pop
      @parent_path = path.join("/")
    else
      @files = Dir["*"]
    end     
  end
end  
