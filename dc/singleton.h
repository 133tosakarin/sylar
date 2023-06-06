#ifndef __DC_SINGLETON_H__
#define __DC_SINGLETON_H__
//单例模式，获取对象
namespace dc{
//N用于区分实例
template<class T, class X = void, int N = 0>
class Singleton {
public:
    static T* GetInstance(){
        static T val;
        return &val;
    }
private:
};

template<class T, class X = void ,int N = 0>
class SingletonPtr{
public:
    static std::shared_ptr<T> GetInstance(){
        static std::shared_ptr<T> v(new T);
        return v;
    }
};
}
#endif