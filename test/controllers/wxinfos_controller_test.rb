require 'test_helper'

class WxinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wxinfo = wxinfos(:one)
  end

  test "should get index" do
    get wxinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_wxinfo_url
    assert_response :success
  end

  test "should create wxinfo" do
    assert_difference('Wxinfo.count') do
      post wxinfos_url, params: { wxinfo: { appid: @wxinfo.appid, appsecret: @wxinfo.appsecret, secret_key: @wxinfo.secret_key, token: @wxinfo.token } }
    end

    assert_redirected_to wxinfo_url(Wxinfo.last)
  end

  test "should show wxinfo" do
    get wxinfo_url(@wxinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_wxinfo_url(@wxinfo)
    assert_response :success
  end

  test "should update wxinfo" do
    patch wxinfo_url(@wxinfo), params: { wxinfo: { appid: @wxinfo.appid, appsecret: @wxinfo.appsecret, secret_key: @wxinfo.secret_key, token: @wxinfo.token } }
    assert_redirected_to wxinfo_url(@wxinfo)
  end

  test "should destroy wxinfo" do
    assert_difference('Wxinfo.count', -1) do
      delete wxinfo_url(@wxinfo)
    end

    assert_redirected_to wxinfos_url
  end
end
