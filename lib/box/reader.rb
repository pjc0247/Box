module Box
	require 'json'

	class Reader
		def initialize
			@data = Hash.new
		end

		def unpack_data(data)
			unpacked = Hash.new

			data.each do |k,v|
				unpacked[k] = Packer.unpack(v)
			end

			return unpacked
		end
		def load(data)
			json = JSON.load(data)
			@data = unpack_data( json )

			return @data
		end

		def read(path)
			fp = File.new(path, "r")
			data = fp.read
			fp.close

			load data
		end
	end
end