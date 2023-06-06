#ifndef DC_NONCOPYABLE_H
#define DC_NONCOPYABLE_H

class noncopyable
{
public:
noncopyable() = default;
~noncopyable() = default;

noncopyable(const noncopyable& ) = delete; 
noncopyable& operator=(const noncopyable&) =delete;

};
#endif