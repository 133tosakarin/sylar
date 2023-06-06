#include"config.h"
namespace dc{
    //Config::ConfigVarMap Config::m_datas;
    //查找当前有无这个名的项,若有则返回
    ConfigVarBase::ptr Config::LookupBase(const std::string&name){
        auto it = GetDatas().find(name);
        return it == GetDatas().end() ? nullptr: it->second;
    }
    static void ListAllMember(const std::string&prefix,
                              const YAML::Node&node,
                              std::list<std::pair<std::string,const YAML::Node>>&output)
    {
        if(prefix.find_first_not_of("abcdefghijklmnopqrstuvwxyz._012345678") != std::string::npos){
            DC_LOG_ERROR(DC_LOG_ROOT())<<"Config invalid name: "<< prefix << " : "<<node;
            return ;
        }
        output.push_back({prefix,node});
        if(node.IsMap()){
            for(auto it = node.begin(); it!=node.end(); ++it){
                //若key为空则把当前map的键作为prefix,否则就是某个对象.成员的形式"A.b"作为prefix
                ListAllMember((prefix.empty() ? it->first.Scalar() : prefix + "." + it->first.Scalar()),it->second,output);
            }
        }
    }
     void Config::LoadFromYaml(const YAML::Node&root){
        std::list<std::pair<std::string,const YAML::Node>> all_nodes;
        ListAllMember("", root ,all_nodes);

        for(auto& it : all_nodes){
            std::string key = it.first;
            if(key.empty())
                continue;
            std::transform(key.begin(),key.end(),key.begin(), ::tolower);
            ConfigVarBase::ptr var = LookupBase(key);
            if(var!=nullptr){
                //是Scalar（字符串）则将其转化为对象
                if(it.second.IsScalar()){
                    var->fromString(it.second.Scalar());
                } else{
                    //若不是string则将其转化为string
                    std::stringstream ss;
                    ss << it.second;
                    var->fromString(ss.str());
                }   
            }
        }
    }
void Config::Visit(std::function<void(ConfigVarBase::ptr)> cb) {
	RWMutexType::ReadLock lock(GetMutex());
	ConfigVarMap& m = GetDatas();
	for(auto it = m.begin(); it != m.end(); ++it) {
		cb(it->second);
	}

}

    
}
