class PortfoliosController < ApplicationController
    def show
        @users = Portfolio.all
    end

end
