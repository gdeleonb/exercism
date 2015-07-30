class Gigasecond
	VERSION = 1
	
	def self.from(birthdate)
		birthdate + (10**9)
	end
end