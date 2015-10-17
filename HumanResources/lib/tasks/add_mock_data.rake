task :add_mock_data => :environment do
  ["化妆师","灯光师","司仪主持","摄像师","摄影师"].each_with_index do |item, index|
    Setting.create({:name => "career", :setting_key => index + 1, :value => item})
  end
end