class CisController < ApplicationController
  include TestSuite
  def show
    @ci=ci_list[params[:id].to_i]
  end

  def update
    # TODO: Where do we go from here?
  end

  def destroy
    redirect_to cis_path
  end
end
