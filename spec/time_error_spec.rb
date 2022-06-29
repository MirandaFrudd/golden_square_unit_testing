require 'time_error'

RSpec.describe TimeError do
  it "compares server time and current time" do
    requester = double :requester
    expect(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return(
      '{"abbreviation":"BST","client_ip":"91.125.156.155","datetime":"2022-06-29T15:47:25.069305+01:00","day_of_week":3,"day_of_year":180,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1656514045,"utc_datetime":"2022-06-29T14:47:25.069305+00:00","utc_offset":"+01:00","week_number":26}'
    )
    time_error = TimeError.new(requester)
    time = Time.new(2022, 06, 29, 14, 47, 15, "+00:00")
    expect( time_error.error(time) ).to eq 10.069305
  end
end