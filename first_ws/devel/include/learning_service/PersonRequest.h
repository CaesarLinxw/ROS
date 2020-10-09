// Generated by gencpp from file learning_service/PersonRequest.msg
// DO NOT EDIT!


#ifndef LEARNING_SERVICE_MESSAGE_PERSONREQUEST_H
#define LEARNING_SERVICE_MESSAGE_PERSONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace learning_service
{
template <class ContainerAllocator>
struct PersonRequest_
{
  typedef PersonRequest_<ContainerAllocator> Type;

  PersonRequest_()
    : name()
    , age(0)
    , gender(0)  {
    }
  PersonRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , gender(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _age_type;
  _age_type age;

   typedef uint8_t _gender_type;
  _gender_type gender;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(unknown)
  #undef unknown
#endif
#if defined(_WIN32) && defined(male)
  #undef male
#endif
#if defined(_WIN32) && defined(female)
  #undef female
#endif

  enum {
    unknown = 0u,
    male = 1u,
    female = 2u,
  };


  typedef boost::shared_ptr< ::learning_service::PersonRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::learning_service::PersonRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PersonRequest_

typedef ::learning_service::PersonRequest_<std::allocator<void> > PersonRequest;

typedef boost::shared_ptr< ::learning_service::PersonRequest > PersonRequestPtr;
typedef boost::shared_ptr< ::learning_service::PersonRequest const> PersonRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::learning_service::PersonRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::learning_service::PersonRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::learning_service::PersonRequest_<ContainerAllocator1> & lhs, const ::learning_service::PersonRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age &&
    lhs.gender == rhs.gender;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::learning_service::PersonRequest_<ContainerAllocator1> & lhs, const ::learning_service::PersonRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace learning_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::learning_service::PersonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::learning_service::PersonRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_service::PersonRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::learning_service::PersonRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_service::PersonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::learning_service::PersonRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::learning_service::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2354270d28e8bf05f6f2a45875247e52";
  }

  static const char* value(const ::learning_service::PersonRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2354270d28e8bf05ULL;
  static const uint64_t static_value2 = 0xf6f2a45875247e52ULL;
};

template<class ContainerAllocator>
struct DataType< ::learning_service::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "learning_service/PersonRequest";
  }

  static const char* value(const ::learning_service::PersonRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::learning_service::PersonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"uint8 age\n"
"uint8 gender\n"
"\n"
"uint8 unknown = 0\n"
"uint8 male = 1\n"
"uint8 female = 2\n"
;
  }

  static const char* value(const ::learning_service::PersonRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::learning_service::PersonRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.gender);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PersonRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::learning_service::PersonRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::learning_service::PersonRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.age);
    s << indent << "gender: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gender);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEARNING_SERVICE_MESSAGE_PERSONREQUEST_H
