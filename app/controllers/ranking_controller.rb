class RankingController < ApplicationController
  def have
    # 全てのItemのhave_countをデータベースに更新
    @item = Item.all
    @item.each do |item|
      item.have_count = item.have_users.count
      item.save
    end
    # have_countの多い順にlimit(10)
    @ranking_haves = Item.order(have_count: :desc).limit(10)
  end
  
  def want
    # 全てのItemのwant_countをデータベースに更新
    @item = Item.all
    @item.each do |item|
      item.want_count = item.want_users.count
      item.save
    end
    # want_countの多い順にlimit(10)
    @ranking_wants = Item.order(want_count: :desc).limit(10)
  end
end
