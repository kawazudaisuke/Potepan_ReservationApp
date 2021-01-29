module ReservationHelper
    class Application < Rails::Application
    config.action_controller.include_all_helpers = false #reservationコントローラ以外のヘルパーは読み込まない
    end
    
    
    def array
        array = []
      i = 0
      while array.size < 20
        i += 1
        array << i
      end
      @array = array
    end
end
