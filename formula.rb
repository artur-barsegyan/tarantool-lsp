class tarantool_lsp < Formula
	homepage "https://github.com/artur-barsegyan/tarantool-lsp"
	desc "LSP server for Tarantool/Lua based codewriters"
	head "https://github.com/artur-barsegyan/tarantool-lsp.git", :branch => "master"

	# By default, Tarantool from brew includes devel headers
	depends_on "tarantool"
	depends_on "wget"
	depends_on "tar"
	depends_on "gcc"

	def install
		system "wget", "https://github.com/sqmedeiros/lpeglabel/archive/v1.5.0-1.tar.gz"
		system "tar", "-xzf", "v1.5.0-1.tar.gz"
		system "tarantoolctl", "rocks", "install", "lpeglabel-1.5.0-1/rockspecs/lpeglabel-1.5.0-1.rockspec"
	end
end
