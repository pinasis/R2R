class ApiController < ApplicationController

        def uber_ride
		 s = Net::HTTP.get_response(URI.parse("https://sandbox-api.uber.com/v1/products?latitude=19.0728300&longitude=72.8826100&access_token=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzY29wZXMiOlsicHJvZmlsZSIsImhpc3RvcnkiLCJyZXF1ZXN0Il0sInN1YiI6ImZiOGUwYTlkLTg5ZmMtNGEwMi1hOTlmLWNjZGQ2MjNkZWRiNCIsImlzcyI6InViZXItdXMxIiwianRpIjoiYzVlYThiZjktNzYyYy00YTQ0LTllYmMtNDgzOGFhYTc3ODY4IiwiZXhwIjoxNDcwMjE1Njg5LCJpYXQiOjE0Njc2MjM2ODgsInVhY3QiOiJoaVVWVWg2NWZ2NzMwUHFFYnl1b0ltRUR1cmNoVEYiLCJuYmYiOjE0Njc2MjM1OTgsImF1ZCI6Ik5sckFncWRMT0dkZUJ1X0o5aE5ETmQ4UEQ5Q3Vkc2dDIn0.Cc2Mp8sIvN09_p8HsXFnbg6ebOwO5djO5JudlaAGbdbpRAu0DVLdCWw10NIyAg0Z-qgyySRl5YcU_2q_CMPOFYEjp6ttDyIL0ZAAc1borB2ocg-xjBTsr-px9WXW9MfGxtCpvTUTbzEhvg1HTHn9tTKadZ2Z7G0lyUCeyLzZ1OrqhUgDpeF9mevUjbob22YHk4-92OKnoqDqunG4khDYV8G_EnmdScxkjWm5Ut46M4o84bbW_Q2FpYXXEUXdtQ6GuQg0KvvvOEAdn4dft7-hyltRiB1khHjkmWxGwdJfj3c2EkENX50cQ1bd9uZ3L7wH7P6HiEsuMFO2P-ivmFVQPg")).body
     q = JSON.parse(s)
p q
       end

#Replace hardcoded PNR by pnr provided in request
	def get_pnr_status
	 s = Net::HTTP.get_response(URI.parse("http://api.railwayapi.com/pnr_status/pnr/6224484662/apikey/cbgmi8296/")).body
     q = JSON.parse(s)	
p q
	end

#Replcae hardcoded ADH staion with source staion code from get_pnr_status
	def get_station_coordinates
		s = Net::HTTP.get_response(URI.parse("http://api.railwayapi.com/code_to_name/code/ADH/apikey/cbgmi8296/")).body
                q = JSON.parse(s)
p q
	end

	def get_user_cordinates
	end

	def get_distance_and_time
	end

	def db_store
	end
end
