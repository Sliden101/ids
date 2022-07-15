import gleeunit/should
import ids/uuid
import gleam/bit_string

pub fn gen_test() {
  assert Ok(id) = uuid.generate_v4()

  assert <<
    _:size(64),
    45,
    _:size(32),
    45,
    _:size(32),
    45,
    _:size(32),
    45,
    _:size(96),
  >> = bit_string.from_string(id)

  should.be_true(True)
}
