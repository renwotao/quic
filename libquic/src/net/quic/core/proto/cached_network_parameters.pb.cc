// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: cached_network_parameters.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "cached_network_parameters.pb.h"

#include <algorithm>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/port.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/io/zero_copy_stream_impl_lite.h>
// @@protoc_insertion_point(includes)

namespace net {

void protobuf_ShutdownFile_cached_5fnetwork_5fparameters_2eproto() {
  delete CachedNetworkParameters::default_instance_;
}

#ifdef GOOGLE_PROTOBUF_NO_STATIC_INITIALIZER
void protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto_impl() {
  GOOGLE_PROTOBUF_VERIFY_VERSION;

#else
void protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

#endif
  CachedNetworkParameters::default_instance_ = new CachedNetworkParameters();
  CachedNetworkParameters::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_cached_5fnetwork_5fparameters_2eproto);
}

#ifdef GOOGLE_PROTOBUF_NO_STATIC_INITIALIZER
GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto_once_);
void protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto_once_,
                 &protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto_impl);
}
#else
// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_cached_5fnetwork_5fparameters_2eproto {
  StaticDescriptorInitializer_cached_5fnetwork_5fparameters_2eproto() {
    protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto();
  }
} static_descriptor_initializer_cached_5fnetwork_5fparameters_2eproto_;
#endif

namespace {

static void MergeFromFail(int line) GOOGLE_ATTRIBUTE_COLD;
GOOGLE_ATTRIBUTE_NOINLINE static void MergeFromFail(int line) {
  GOOGLE_CHECK(false) << __FILE__ << ":" << line;
}

}  // namespace


// ===================================================================

static ::std::string* MutableUnknownFieldsForCachedNetworkParameters(
    CachedNetworkParameters* ptr) {
  return ptr->mutable_unknown_fields();
}

bool CachedNetworkParameters_PreviousConnectionState_IsValid(int value) {
  switch(value) {
    case 0:
    case 1:
      return true;
    default:
      return false;
  }
}

#if !defined(_MSC_VER) || _MSC_VER >= 1900
const CachedNetworkParameters_PreviousConnectionState CachedNetworkParameters::SLOW_START;
const CachedNetworkParameters_PreviousConnectionState CachedNetworkParameters::CONGESTION_AVOIDANCE;
const CachedNetworkParameters_PreviousConnectionState CachedNetworkParameters::PreviousConnectionState_MIN;
const CachedNetworkParameters_PreviousConnectionState CachedNetworkParameters::PreviousConnectionState_MAX;
const int CachedNetworkParameters::PreviousConnectionState_ARRAYSIZE;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900
#if !defined(_MSC_VER) || _MSC_VER >= 1900
const int CachedNetworkParameters::kServingRegionFieldNumber;
const int CachedNetworkParameters::kBandwidthEstimateBytesPerSecondFieldNumber;
const int CachedNetworkParameters::kMaxBandwidthEstimateBytesPerSecondFieldNumber;
const int CachedNetworkParameters::kMaxBandwidthTimestampSecondsFieldNumber;
const int CachedNetworkParameters::kMinRttMsFieldNumber;
const int CachedNetworkParameters::kPreviousConnectionStateFieldNumber;
const int CachedNetworkParameters::kTimestampFieldNumber;
#endif  // !defined(_MSC_VER) || _MSC_VER >= 1900

CachedNetworkParameters::CachedNetworkParameters()
  : ::google::protobuf::MessageLite(), _arena_ptr_(NULL) {
  SharedCtor();
  // @@protoc_insertion_point(constructor:net.CachedNetworkParameters)
}

void CachedNetworkParameters::InitAsDefaultInstance() {
}

CachedNetworkParameters::CachedNetworkParameters(const CachedNetworkParameters& from)
  : ::google::protobuf::MessageLite(),
    _arena_ptr_(NULL) {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:net.CachedNetworkParameters)
}

void CachedNetworkParameters::SharedCtor() {
  ::google::protobuf::internal::GetEmptyString();
  _cached_size_ = 0;
  _unknown_fields_.UnsafeSetDefault(
      &::google::protobuf::internal::GetEmptyStringAlreadyInited());
  serving_region_.UnsafeSetDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  bandwidth_estimate_bytes_per_second_ = 0;
  max_bandwidth_estimate_bytes_per_second_ = 0;
  max_bandwidth_timestamp_seconds_ = GOOGLE_LONGLONG(0);
  min_rtt_ms_ = 0;
  previous_connection_state_ = 0;
  timestamp_ = GOOGLE_LONGLONG(0);
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

CachedNetworkParameters::~CachedNetworkParameters() {
  // @@protoc_insertion_point(destructor:net.CachedNetworkParameters)
  SharedDtor();
}

void CachedNetworkParameters::SharedDtor() {
  _unknown_fields_.DestroyNoArena(
      &::google::protobuf::internal::GetEmptyStringAlreadyInited());
  serving_region_.DestroyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  #ifdef GOOGLE_PROTOBUF_NO_STATIC_INITIALIZER
  if (this != &default_instance()) {
  #else
  if (this != default_instance_) {
  #endif
  }
}

void CachedNetworkParameters::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const CachedNetworkParameters& CachedNetworkParameters::default_instance() {
#ifdef GOOGLE_PROTOBUF_NO_STATIC_INITIALIZER
  protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto();
#else
  if (default_instance_ == NULL) protobuf_AddDesc_cached_5fnetwork_5fparameters_2eproto();
#endif
  return *default_instance_;
}

CachedNetworkParameters* CachedNetworkParameters::default_instance_ = NULL;

CachedNetworkParameters* CachedNetworkParameters::New(::google::protobuf::Arena* arena) const {
  CachedNetworkParameters* n = new CachedNetworkParameters;
  if (arena != NULL) {
    arena->Own(n);
  }
  return n;
}

void CachedNetworkParameters::Clear() {
// @@protoc_insertion_point(message_clear_start:net.CachedNetworkParameters)
#if defined(__clang__)
#define ZR_HELPER_(f) \
  _Pragma("clang diagnostic push") \
  _Pragma("clang diagnostic ignored \"-Winvalid-offsetof\"") \
  __builtin_offsetof(CachedNetworkParameters, f) \
  _Pragma("clang diagnostic pop")
#else
#define ZR_HELPER_(f) reinterpret_cast<char*>(\
  &reinterpret_cast<CachedNetworkParameters*>(16)->f)
#endif

#define ZR_(first, last) do {\
  ::memset(&first, 0,\
           ZR_HELPER_(last) - ZR_HELPER_(first) + sizeof(last));\
} while (0)

  if (_has_bits_[0 / 32] & 127u) {
    ZR_(bandwidth_estimate_bytes_per_second_, timestamp_);
    if (has_serving_region()) {
      serving_region_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    }
  }

#undef ZR_HELPER_
#undef ZR_

  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  _unknown_fields_.ClearToEmptyNoArena(
      &::google::protobuf::internal::GetEmptyStringAlreadyInited());
}

bool CachedNetworkParameters::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!GOOGLE_PREDICT_TRUE(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  ::google::protobuf::io::LazyStringOutputStream unknown_fields_string(
      ::google::protobuf::internal::NewPermanentCallback(
          &MutableUnknownFieldsForCachedNetworkParameters, this));
  ::google::protobuf::io::CodedOutputStream unknown_fields_stream(
      &unknown_fields_string, false);
  // @@protoc_insertion_point(parse_start:net.CachedNetworkParameters)
  for (;;) {
    ::std::pair< ::google::protobuf::uint32, bool> p = input->ReadTagWithCutoff(127);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // optional string serving_region = 1;
      case 1: {
        if (tag == 10) {
          DO_(::google::protobuf::internal::WireFormatLite::ReadString(
                input, this->mutable_serving_region()));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(16)) goto parse_bandwidth_estimate_bytes_per_second;
        break;
      }

      // optional int32 bandwidth_estimate_bytes_per_second = 2;
      case 2: {
        if (tag == 16) {
         parse_bandwidth_estimate_bytes_per_second:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &bandwidth_estimate_bytes_per_second_)));
          set_has_bandwidth_estimate_bytes_per_second();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(24)) goto parse_min_rtt_ms;
        break;
      }

      // optional int32 min_rtt_ms = 3;
      case 3: {
        if (tag == 24) {
         parse_min_rtt_ms:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &min_rtt_ms_)));
          set_has_min_rtt_ms();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(32)) goto parse_previous_connection_state;
        break;
      }

      // optional int32 previous_connection_state = 4;
      case 4: {
        if (tag == 32) {
         parse_previous_connection_state:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &previous_connection_state_)));
          set_has_previous_connection_state();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(40)) goto parse_max_bandwidth_estimate_bytes_per_second;
        break;
      }

      // optional int32 max_bandwidth_estimate_bytes_per_second = 5;
      case 5: {
        if (tag == 40) {
         parse_max_bandwidth_estimate_bytes_per_second:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int32, ::google::protobuf::internal::WireFormatLite::TYPE_INT32>(
                 input, &max_bandwidth_estimate_bytes_per_second_)));
          set_has_max_bandwidth_estimate_bytes_per_second();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(48)) goto parse_max_bandwidth_timestamp_seconds;
        break;
      }

      // optional int64 max_bandwidth_timestamp_seconds = 6;
      case 6: {
        if (tag == 48) {
         parse_max_bandwidth_timestamp_seconds:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int64, ::google::protobuf::internal::WireFormatLite::TYPE_INT64>(
                 input, &max_bandwidth_timestamp_seconds_)));
          set_has_max_bandwidth_timestamp_seconds();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(56)) goto parse_timestamp;
        break;
      }

      // optional int64 timestamp = 7;
      case 7: {
        if (tag == 56) {
         parse_timestamp:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::int64, ::google::protobuf::internal::WireFormatLite::TYPE_INT64>(
                 input, &timestamp_)));
          set_has_timestamp();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectAtEnd()) goto success;
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0 ||
            ::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormatLite::SkipField(
            input, tag, &unknown_fields_stream));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:net.CachedNetworkParameters)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:net.CachedNetworkParameters)
  return false;
#undef DO_
}

void CachedNetworkParameters::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:net.CachedNetworkParameters)
  // optional string serving_region = 1;
  if (has_serving_region()) {
    ::google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(
      1, this->serving_region(), output);
  }

  // optional int32 bandwidth_estimate_bytes_per_second = 2;
  if (has_bandwidth_estimate_bytes_per_second()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(2, this->bandwidth_estimate_bytes_per_second(), output);
  }

  // optional int32 min_rtt_ms = 3;
  if (has_min_rtt_ms()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(3, this->min_rtt_ms(), output);
  }

  // optional int32 previous_connection_state = 4;
  if (has_previous_connection_state()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(4, this->previous_connection_state(), output);
  }

  // optional int32 max_bandwidth_estimate_bytes_per_second = 5;
  if (has_max_bandwidth_estimate_bytes_per_second()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt32(5, this->max_bandwidth_estimate_bytes_per_second(), output);
  }

  // optional int64 max_bandwidth_timestamp_seconds = 6;
  if (has_max_bandwidth_timestamp_seconds()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt64(6, this->max_bandwidth_timestamp_seconds(), output);
  }

  // optional int64 timestamp = 7;
  if (has_timestamp()) {
    ::google::protobuf::internal::WireFormatLite::WriteInt64(7, this->timestamp(), output);
  }

  output->WriteRaw(unknown_fields().data(),
                   static_cast<int>(unknown_fields().size()));
  // @@protoc_insertion_point(serialize_end:net.CachedNetworkParameters)
}

int CachedNetworkParameters::ByteSize() const {
// @@protoc_insertion_point(message_byte_size_start:net.CachedNetworkParameters)
  int total_size = 0;

  if (_has_bits_[0 / 32] & 127u) {
    // optional string serving_region = 1;
    if (has_serving_region()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::StringSize(
          this->serving_region());
    }

    // optional int32 bandwidth_estimate_bytes_per_second = 2;
    if (has_bandwidth_estimate_bytes_per_second()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->bandwidth_estimate_bytes_per_second());
    }

    // optional int32 max_bandwidth_estimate_bytes_per_second = 5;
    if (has_max_bandwidth_estimate_bytes_per_second()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->max_bandwidth_estimate_bytes_per_second());
    }

    // optional int64 max_bandwidth_timestamp_seconds = 6;
    if (has_max_bandwidth_timestamp_seconds()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int64Size(
          this->max_bandwidth_timestamp_seconds());
    }

    // optional int32 min_rtt_ms = 3;
    if (has_min_rtt_ms()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->min_rtt_ms());
    }

    // optional int32 previous_connection_state = 4;
    if (has_previous_connection_state()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int32Size(
          this->previous_connection_state());
    }

    // optional int64 timestamp = 7;
    if (has_timestamp()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::Int64Size(
          this->timestamp());
    }

  }
  total_size += unknown_fields().size();

  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void CachedNetworkParameters::CheckTypeAndMergeFrom(
    const ::google::protobuf::MessageLite& from) {
  MergeFrom(*::google::protobuf::down_cast<const CachedNetworkParameters*>(&from));
}

void CachedNetworkParameters::MergeFrom(const CachedNetworkParameters& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:net.CachedNetworkParameters)
  if (GOOGLE_PREDICT_FALSE(&from == this)) MergeFromFail(__LINE__);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_serving_region()) {
      set_has_serving_region();
      serving_region_.AssignWithDefault(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), from.serving_region_);
    }
    if (from.has_bandwidth_estimate_bytes_per_second()) {
      set_bandwidth_estimate_bytes_per_second(from.bandwidth_estimate_bytes_per_second());
    }
    if (from.has_max_bandwidth_estimate_bytes_per_second()) {
      set_max_bandwidth_estimate_bytes_per_second(from.max_bandwidth_estimate_bytes_per_second());
    }
    if (from.has_max_bandwidth_timestamp_seconds()) {
      set_max_bandwidth_timestamp_seconds(from.max_bandwidth_timestamp_seconds());
    }
    if (from.has_min_rtt_ms()) {
      set_min_rtt_ms(from.min_rtt_ms());
    }
    if (from.has_previous_connection_state()) {
      set_previous_connection_state(from.previous_connection_state());
    }
    if (from.has_timestamp()) {
      set_timestamp(from.timestamp());
    }
  }
  if (!from.unknown_fields().empty()) {
    mutable_unknown_fields()->append(from.unknown_fields());
  }
}

void CachedNetworkParameters::CopyFrom(const CachedNetworkParameters& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:net.CachedNetworkParameters)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool CachedNetworkParameters::IsInitialized() const {

  return true;
}

void CachedNetworkParameters::Swap(CachedNetworkParameters* other) {
  if (other == this) return;
  InternalSwap(other);
}
void CachedNetworkParameters::InternalSwap(CachedNetworkParameters* other) {
  serving_region_.Swap(&other->serving_region_);
  std::swap(bandwidth_estimate_bytes_per_second_, other->bandwidth_estimate_bytes_per_second_);
  std::swap(max_bandwidth_estimate_bytes_per_second_, other->max_bandwidth_estimate_bytes_per_second_);
  std::swap(max_bandwidth_timestamp_seconds_, other->max_bandwidth_timestamp_seconds_);
  std::swap(min_rtt_ms_, other->min_rtt_ms_);
  std::swap(previous_connection_state_, other->previous_connection_state_);
  std::swap(timestamp_, other->timestamp_);
  std::swap(_has_bits_[0], other->_has_bits_[0]);
  _unknown_fields_.Swap(&other->_unknown_fields_);
  std::swap(_cached_size_, other->_cached_size_);
}

::std::string CachedNetworkParameters::GetTypeName() const {
  return "net.CachedNetworkParameters";
}

#if PROTOBUF_INLINE_NOT_IN_HEADERS
// CachedNetworkParameters

// optional string serving_region = 1;
bool CachedNetworkParameters::has_serving_region() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
void CachedNetworkParameters::set_has_serving_region() {
  _has_bits_[0] |= 0x00000001u;
}
void CachedNetworkParameters::clear_has_serving_region() {
  _has_bits_[0] &= ~0x00000001u;
}
void CachedNetworkParameters::clear_serving_region() {
  serving_region_.ClearToEmptyNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  clear_has_serving_region();
}
 const ::std::string& CachedNetworkParameters::serving_region() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.serving_region)
  return serving_region_.GetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 void CachedNetworkParameters::set_serving_region(const ::std::string& value) {
  set_has_serving_region();
  serving_region_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), value);
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.serving_region)
}
 void CachedNetworkParameters::set_serving_region(const char* value) {
  set_has_serving_region();
  serving_region_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), ::std::string(value));
  // @@protoc_insertion_point(field_set_char:net.CachedNetworkParameters.serving_region)
}
 void CachedNetworkParameters::set_serving_region(const char* value, size_t size) {
  set_has_serving_region();
  serving_region_.SetNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(),
      ::std::string(reinterpret_cast<const char*>(value), size));
  // @@protoc_insertion_point(field_set_pointer:net.CachedNetworkParameters.serving_region)
}
 ::std::string* CachedNetworkParameters::mutable_serving_region() {
  set_has_serving_region();
  // @@protoc_insertion_point(field_mutable:net.CachedNetworkParameters.serving_region)
  return serving_region_.MutableNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 ::std::string* CachedNetworkParameters::release_serving_region() {
  // @@protoc_insertion_point(field_release:net.CachedNetworkParameters.serving_region)
  clear_has_serving_region();
  return serving_region_.ReleaseNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
}
 void CachedNetworkParameters::set_allocated_serving_region(::std::string* serving_region) {
  if (serving_region != NULL) {
    set_has_serving_region();
  } else {
    clear_has_serving_region();
  }
  serving_region_.SetAllocatedNoArena(&::google::protobuf::internal::GetEmptyStringAlreadyInited(), serving_region);
  // @@protoc_insertion_point(field_set_allocated:net.CachedNetworkParameters.serving_region)
}

// optional int32 bandwidth_estimate_bytes_per_second = 2;
bool CachedNetworkParameters::has_bandwidth_estimate_bytes_per_second() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
void CachedNetworkParameters::set_has_bandwidth_estimate_bytes_per_second() {
  _has_bits_[0] |= 0x00000002u;
}
void CachedNetworkParameters::clear_has_bandwidth_estimate_bytes_per_second() {
  _has_bits_[0] &= ~0x00000002u;
}
void CachedNetworkParameters::clear_bandwidth_estimate_bytes_per_second() {
  bandwidth_estimate_bytes_per_second_ = 0;
  clear_has_bandwidth_estimate_bytes_per_second();
}
 ::google::protobuf::int32 CachedNetworkParameters::bandwidth_estimate_bytes_per_second() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.bandwidth_estimate_bytes_per_second)
  return bandwidth_estimate_bytes_per_second_;
}
 void CachedNetworkParameters::set_bandwidth_estimate_bytes_per_second(::google::protobuf::int32 value) {
  set_has_bandwidth_estimate_bytes_per_second();
  bandwidth_estimate_bytes_per_second_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.bandwidth_estimate_bytes_per_second)
}

// optional int32 max_bandwidth_estimate_bytes_per_second = 5;
bool CachedNetworkParameters::has_max_bandwidth_estimate_bytes_per_second() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
void CachedNetworkParameters::set_has_max_bandwidth_estimate_bytes_per_second() {
  _has_bits_[0] |= 0x00000004u;
}
void CachedNetworkParameters::clear_has_max_bandwidth_estimate_bytes_per_second() {
  _has_bits_[0] &= ~0x00000004u;
}
void CachedNetworkParameters::clear_max_bandwidth_estimate_bytes_per_second() {
  max_bandwidth_estimate_bytes_per_second_ = 0;
  clear_has_max_bandwidth_estimate_bytes_per_second();
}
 ::google::protobuf::int32 CachedNetworkParameters::max_bandwidth_estimate_bytes_per_second() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.max_bandwidth_estimate_bytes_per_second)
  return max_bandwidth_estimate_bytes_per_second_;
}
 void CachedNetworkParameters::set_max_bandwidth_estimate_bytes_per_second(::google::protobuf::int32 value) {
  set_has_max_bandwidth_estimate_bytes_per_second();
  max_bandwidth_estimate_bytes_per_second_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.max_bandwidth_estimate_bytes_per_second)
}

// optional int64 max_bandwidth_timestamp_seconds = 6;
bool CachedNetworkParameters::has_max_bandwidth_timestamp_seconds() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
void CachedNetworkParameters::set_has_max_bandwidth_timestamp_seconds() {
  _has_bits_[0] |= 0x00000008u;
}
void CachedNetworkParameters::clear_has_max_bandwidth_timestamp_seconds() {
  _has_bits_[0] &= ~0x00000008u;
}
void CachedNetworkParameters::clear_max_bandwidth_timestamp_seconds() {
  max_bandwidth_timestamp_seconds_ = GOOGLE_LONGLONG(0);
  clear_has_max_bandwidth_timestamp_seconds();
}
 ::google::protobuf::int64 CachedNetworkParameters::max_bandwidth_timestamp_seconds() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.max_bandwidth_timestamp_seconds)
  return max_bandwidth_timestamp_seconds_;
}
 void CachedNetworkParameters::set_max_bandwidth_timestamp_seconds(::google::protobuf::int64 value) {
  set_has_max_bandwidth_timestamp_seconds();
  max_bandwidth_timestamp_seconds_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.max_bandwidth_timestamp_seconds)
}

// optional int32 min_rtt_ms = 3;
bool CachedNetworkParameters::has_min_rtt_ms() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
void CachedNetworkParameters::set_has_min_rtt_ms() {
  _has_bits_[0] |= 0x00000010u;
}
void CachedNetworkParameters::clear_has_min_rtt_ms() {
  _has_bits_[0] &= ~0x00000010u;
}
void CachedNetworkParameters::clear_min_rtt_ms() {
  min_rtt_ms_ = 0;
  clear_has_min_rtt_ms();
}
 ::google::protobuf::int32 CachedNetworkParameters::min_rtt_ms() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.min_rtt_ms)
  return min_rtt_ms_;
}
 void CachedNetworkParameters::set_min_rtt_ms(::google::protobuf::int32 value) {
  set_has_min_rtt_ms();
  min_rtt_ms_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.min_rtt_ms)
}

// optional int32 previous_connection_state = 4;
bool CachedNetworkParameters::has_previous_connection_state() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
void CachedNetworkParameters::set_has_previous_connection_state() {
  _has_bits_[0] |= 0x00000020u;
}
void CachedNetworkParameters::clear_has_previous_connection_state() {
  _has_bits_[0] &= ~0x00000020u;
}
void CachedNetworkParameters::clear_previous_connection_state() {
  previous_connection_state_ = 0;
  clear_has_previous_connection_state();
}
 ::google::protobuf::int32 CachedNetworkParameters::previous_connection_state() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.previous_connection_state)
  return previous_connection_state_;
}
 void CachedNetworkParameters::set_previous_connection_state(::google::protobuf::int32 value) {
  set_has_previous_connection_state();
  previous_connection_state_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.previous_connection_state)
}

// optional int64 timestamp = 7;
bool CachedNetworkParameters::has_timestamp() const {
  return (_has_bits_[0] & 0x00000040u) != 0;
}
void CachedNetworkParameters::set_has_timestamp() {
  _has_bits_[0] |= 0x00000040u;
}
void CachedNetworkParameters::clear_has_timestamp() {
  _has_bits_[0] &= ~0x00000040u;
}
void CachedNetworkParameters::clear_timestamp() {
  timestamp_ = GOOGLE_LONGLONG(0);
  clear_has_timestamp();
}
 ::google::protobuf::int64 CachedNetworkParameters::timestamp() const {
  // @@protoc_insertion_point(field_get:net.CachedNetworkParameters.timestamp)
  return timestamp_;
}
 void CachedNetworkParameters::set_timestamp(::google::protobuf::int64 value) {
  set_has_timestamp();
  timestamp_ = value;
  // @@protoc_insertion_point(field_set:net.CachedNetworkParameters.timestamp)
}

#endif  // PROTOBUF_INLINE_NOT_IN_HEADERS

// @@protoc_insertion_point(namespace_scope)

}  // namespace net

// @@protoc_insertion_point(global_scope)
