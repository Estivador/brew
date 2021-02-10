# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ntlm-http` gem.
# Please instead update this file by running `tapioca generate --exclude json`.

# typed: true

module Net::NTLM
  class << self
    def apply_des(plain, keys); end
    def decode_utf16le(str); end
    def encode_utf16le(str); end
    def gen_keys(str); end
    def lm_hash(password); end
    def lm_response(arg); end
    def lmv2_response(arg, opt = T.unsafe(nil)); end
    def ntlm2_session(arg, opt = T.unsafe(nil)); end
    def ntlm_hash(password, opt = T.unsafe(nil)); end
    def ntlm_response(arg); end
    def ntlmv2_hash(user, password, target, opt = T.unsafe(nil)); end
    def ntlmv2_response(arg, opt = T.unsafe(nil)); end
    def pack_int64le(val); end
    def split7(str); end
    def swap16(str); end
  end
end

class Net::NTLM::Blob < ::Net::NTLM::FieldSet
  def blob_signature; end
  def blob_signature=(val); end
  def challenge; end
  def challenge=(val); end
  def reserved; end
  def reserved=(val); end
  def target_info; end
  def target_info=(val); end
  def timestamp; end
  def timestamp=(val); end
  def unknown1; end
  def unknown1=(val); end
  def unknown2; end
  def unknown2=(val); end

  class << self
    def inherited(subclass); end
  end
end

class Net::NTLM::Field
  def initialize(opts); end

  def active; end
  def active=(_); end
  def size; end
  def value; end
  def value=(_); end
end

class Net::NTLM::FieldSet
  def initialize; end

  def [](name); end
  def []=(name, val); end
  def disable(name); end
  def enable(name); end
  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def size; end

  class << self
    def define(&block); end
    def int16LE(name, opts); end
    def int32LE(name, opts); end
    def int64LE(name, opts); end
    def names; end
    def opts; end
    def prototypes; end
    def security_buffer(name, opts); end
    def string(name, opts); end
    def types; end

    private

    def add_field(name, type, opts); end
    def define_accessor(name); end
  end
end

class Net::NTLM::Int16LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::Int32LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::Int64LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
end

class Net::NTLM::Message < ::Net::NTLM::FieldSet
  def data_size; end
  def decode64(str); end
  def dump_flags; end
  def encode64; end
  def has_flag?(flag); end
  def head_size; end
  def serialize; end
  def set_flag(flag); end
  def size; end

  private

  def data_edge; end
  def deflag; end
  def security_buffers; end

  class << self
    def decode64(str); end
    def parse(str); end
  end
end

class Net::NTLM::Message::Type0 < ::Net::NTLM::Message
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end

  class << self
    def inherited(subclass); end
  end
end

class Net::NTLM::Message::Type1 < ::Net::NTLM::Message
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def padding; end
  def padding=(val); end
  def parse(str); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def workstation; end
  def workstation=(val); end

  class << self
    def inherited(subclass); end
    def parse(str); end
  end
end

class Net::NTLM::Message::Type2 < ::Net::NTLM::Message
  def challenge; end
  def challenge=(val); end
  def context; end
  def context=(val); end
  def flag; end
  def flag=(val); end
  def padding; end
  def padding=(val); end
  def parse(str); end
  def response(arg, opt = T.unsafe(nil)); end
  def sign; end
  def sign=(val); end
  def target_info; end
  def target_info=(val); end
  def target_name; end
  def target_name=(val); end
  def type; end
  def type=(val); end

  class << self
    def inherited(subclass); end
    def parse(str); end
  end
end

class Net::NTLM::Message::Type3 < ::Net::NTLM::Message
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def lm_response; end
  def lm_response=(val); end
  def ntlm_response; end
  def ntlm_response=(val); end
  def session_key; end
  def session_key=(val); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def user; end
  def user=(val); end
  def workstation; end
  def workstation=(val); end

  class << self
    def create(arg, opt = T.unsafe(nil)); end
    def inherited(subclass); end
    def parse(str); end
  end
end

class Net::NTLM::SecurityBuffer < ::Net::NTLM::FieldSet
  def initialize(opts); end

  def active; end
  def active=(_); end
  def allocated; end
  def allocated=(val); end
  def data_size; end
  def length; end
  def length=(val); end
  def offset; end
  def offset=(val); end
  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def value; end
  def value=(val); end

  class << self
    def inherited(subclass); end
  end
end

class Net::NTLM::String < ::Net::NTLM::Field
  def initialize(opts); end

  def parse(str, offset = T.unsafe(nil)); end
  def serialize; end
  def value=(val); end
end

module Net::NTLM::VERSION
end

Net::NTLM::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

Net::NTLM::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

Net::NTLM::VERSION::STRING = T.let(T.unsafe(nil), String)

Net::NTLM::VERSION::TINY = T.let(T.unsafe(nil), Integer)
