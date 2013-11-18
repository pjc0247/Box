module Box
	require 'zlib'
	require 'base64'

	class Packer
		def initialize
		end

		def self.pack(data)
			c = Zlib::Deflate.deflate(data)
			e = Base64.encode64(c)

			return e
		end
		def self.unpack(data)
			e = Base64.decode64(data)
			c = Zlib::Inflate.inflate(e)

			return c
		end
	end
end