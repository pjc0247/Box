module Box
	require 'json'
	
	class Writer
		def initialize
			@data = Hash.new
		end

		def add(name, data)
			@data[name] = data
		end
		def delete(name)
			@data.delete name
		end

		def pack_data(data)
			packed = Hash.new

			data.each do |k,v|
				packed[k] = Packer.pack(v)
			end

			return packed
		end
		def dump
			packed = pack_data(@data)
			json = JSON.dump(packed)

			return json
		end

		def write(path)
			fp = File.new(path, "w")
			fp.write(dump)
			fp.close
		end
	end
end