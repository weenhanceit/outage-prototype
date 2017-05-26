class CisController < ApplicationController
  include TestSuite
  def show
    @ci=ci_list[params[:id].to_i]
  end
end
