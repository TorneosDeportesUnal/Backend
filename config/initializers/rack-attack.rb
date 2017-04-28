class Rack::Attack
  # your custom configuration...
  	Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new
  	
	Rack::Attack.safelist('allow from localhost') do |req|
  		'127.0.0.1' == req.ip || '::1' == req.ip
	end


	Rack::Attack.throttle('req/ip', :limit => 5, :period => 1.second) do |req|
  		req.ip
	end


	Rack::Attack.throttled_response = lambda do |env|
  		now = Time.now
	  	match_data = env['rack.attack.match_data']

  		headers = {
    	'X-RateLimit-Limit' => match_data[:limit].to_s,
    	'X-RateLimit-Remaining' => '0',
    	'X-RateLimit-Reset' => (now + (match_data[:period] - now.to_i % match_data[:period])).to_s
 		}

  		[ 429, headers, [{ data: {error: "Limit reached. Retry later."}}.to_json]]
  	end

end