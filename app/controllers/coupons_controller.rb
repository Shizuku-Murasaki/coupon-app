class CouponsController < ApplicationController
  before_action :authenticate_user

  def index
    @coupons = [
      '柏電気　会計にて100円OFF',
      'ラーメン松戸　替え玉無料'
    ]
  end
end
