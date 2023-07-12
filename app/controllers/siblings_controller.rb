class SiblingsController < ApplicationController
    def index
        @siblings = Sibling.all
        render :index
      end
end
