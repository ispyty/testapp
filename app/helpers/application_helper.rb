module ApplicationHelper

      def load_client
            if !params[:client_id]
                  params[:id] ||= session[:client_id]
                  session[:client_id] = params[:id]
                  if params[:id]
                        @client = Client.find(params[:id])
                  else
                        @client = Client
                  end
            else
                  params[:client_id] ||= session[:client_id]
                  session[:client_id] = params[:client_id]
                  if params[:client_id]
                        @client = Client.find(params[:client_id])
                  else
                        @client = Client
                  end
            end
      end

      def load_store
            if params[:client_id].blank?
                  # We're in a client-level view
                  if session[:store_id]
                        @store = Store.find(session[:store_id])
                  end
            else
                  # We're in a store-level view
                  params[:id] ||= session[:store_id]
                  session[:store_id] = params[:id]
                  if params[:id]
                        @store = Store.find(params[:id])
                  else
                        @store = Store
                  end
            end
      end

      def google_maps_api_key
            "AIzaSyAvstuXHHkNzI3uwY9v6zIbHLru5ewcSto"
      end
      def google_api_url
            "http://maps.googleapis.com/maps/api/js"
      end
      def google_api_access
            "#{google_api_url}?key=#{google_maps_api_key}&sensor=false"
      end
      def google_maps_api
            content_tag(:script,:type => "text/javascript",:src => google_api_access) do
            end
      end

      def us_states
    [
      ['Alabama'],
      ['Alaska'],
      ['Arizona'],
      ['Arkansas'],
      ['California'],
      ['Colorado'],
      ['Connecticut'],
      ['Delaware'],
      ['District of Columbia'],
      ['Florida'],
      ['Georgia'],
      ['Hawaii'],
      ['Idaho'],
      ['Illinois'],
      ['Indiana'],
      ['Iowa'],
      ['Kansas'],
      ['Kentucky'],
      ['Louisiana'],
      ['Maine'],
      ['Maryland'],
      ['Massachusetts'],
      ['Michigan'],
      ['Minnesota'],
      ['Mississippi'],
      ['Missouri'],
      ['Montana'],
      ['Nebraska'],
      ['Nevada'],
      ['New Hampshire'],
      ['New Jersey'],
      ['New Mexico'],
      ['New York'],
      ['North Carolina'],
      ['North Dakota'],
      ['Ohio'],
      ['Oklahoma'],
      ['Oregon'],
      ['Pennsylvania'],
      ['Puerto Rico'],
      ['Rhode Island'],
      ['South Carolina'],
      ['South Dakota'],
      ['Tennessee'],
      ['Texas'],
      ['Utah'],
      ['Vermont'],
      ['Virginia'],
      ['Washington'],
      ['West Virginia'],
      ['Wisconsin'],
      ['Wyoming']
    ]
      end
end
