task :add_mock_data => :environment do
  ["化妆师","灯光师","司仪主持","摄像师","摄影师"].each_with_index do |item, index|
    Setting.create({:key => index + 1, :value => item})
  end
  ["xmk","zxy","LD","hanyun","wxt"].each_with_index do |item, index|
    User.create({:career => index + 1, 
                 :user_name => item, 
                 :phone_number => "13776613200", 
                 :password => "123456"})
  end
end