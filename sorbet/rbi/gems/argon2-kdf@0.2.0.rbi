# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `argon2-kdf` gem.
# Please instead update this file by running `bin/tapioca gem argon2-kdf`.

# source://argon2-kdf//lib/argon2/kdf/version.rb#1
module Argon2; end

# source://argon2-kdf//lib/argon2/kdf/version.rb#2
module Argon2::KDF
  class << self
    # source://argon2-kdf//lib/argon2/kdf.rb#41
    def argon2d(pass, salt:, t:, m:, p:, length:); end

    # source://argon2-kdf//lib/argon2/kdf.rb#37
    def argon2i(pass, salt:, t:, m:, p:, length:); end

    # source://argon2-kdf//lib/argon2/kdf.rb#45
    def argon2id(pass, salt:, t:, m:, p:, length:); end

    # Returns the value of attribute ffi_lib.
    #
    # source://argon2-kdf//lib/argon2/kdf.rb#12
    def ffi_lib; end

    # Sets the attribute ffi_lib
    #
    # @param value the value to set the attribute ffi_lib to.
    #
    # source://argon2-kdf//lib/argon2/kdf.rb#12
    def ffi_lib=(_arg0); end

    private

    # source://argon2-kdf//lib/argon2/kdf.rb#59
    def check_status(status); end

    # source://argon2-kdf//lib/argon2/kdf.rb#51
    def kdf(variant, pass, salt, t, m, p, length); end
  end
end

# source://argon2-kdf//lib/argon2/kdf.rb#9
class Argon2::KDF::Error < ::StandardError; end

# source://argon2-kdf//lib/argon2/kdf/ffi.rb#3
module Argon2::KDF::FFI
  extend ::Fiddle
  extend ::Fiddle::CParser
  extend ::Fiddle::Importer

  private

  # source://argon2-kdf//lib/argon2/kdf/ffi.rb#26
  def argon2_error_message(*args, &block); end

  # source://argon2-kdf//lib/argon2/kdf/ffi.rb#24
  def argon2d_hash_raw(*args, &block); end

  # source://argon2-kdf//lib/argon2/kdf/ffi.rb#23
  def argon2i_hash_raw(*args, &block); end

  # source://argon2-kdf//lib/argon2/kdf/ffi.rb#25
  def argon2id_hash_raw(*args, &block); end

  class << self
    # source://argon2-kdf//lib/argon2/kdf/ffi.rb#26
    def argon2_error_message(*args, &block); end

    # source://argon2-kdf//lib/argon2/kdf/ffi.rb#24
    def argon2d_hash_raw(*args, &block); end

    # source://argon2-kdf//lib/argon2/kdf/ffi.rb#23
    def argon2i_hash_raw(*args, &block); end

    # source://argon2-kdf//lib/argon2/kdf/ffi.rb#25
    def argon2id_hash_raw(*args, &block); end
  end
end

# source://argon2-kdf//lib/argon2/kdf/version.rb#3
Argon2::KDF::VERSION = T.let(T.unsafe(nil), String)