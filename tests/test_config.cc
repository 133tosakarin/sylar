#include"../dc/log.h"
#include"../dc/config.h"
dc::ConfigVar<int>:: ptr g_int_value_config = dc::Config::Lookup("system.port",8080,"system port");
dc::ConfigVar<float>:: ptr g_float_valuex_config = dc::Config::Lookup("system.port",(float)8070.0f,"system port");
dc::ConfigVar<float>:: ptr g_float_value_config = dc::Config::Lookup("system.value",(float)8080.11,"system value");
dc::ConfigVar<std::vector<int>>:: ptr g_int_vec_value_config = dc::Config::Lookup("system.int_vec",std::vector<int>{1,2},"system int vec");
dc::ConfigVar<std::list<int>>:: ptr g_int_list_value_config = dc::Config::Lookup("system.int_list",std::list<int>{3,5},"system int list");
dc::ConfigVar<std::set<int>>:: ptr g_int_set_value_config = dc::Config::Lookup("system.int_set",std::set<int>{99,111},"system int set");
dc::ConfigVar<std::unordered_set<int>>:: ptr g_int_unordered_set_value_config = dc::Config::Lookup("system.int_unordered_set",std::unordered_set<int>{111,333,15},"system int unordered_set");
dc::ConfigVar<std::map<std::string,int>>:: ptr g_str_int_map_value_config = dc::Config::Lookup("system.str_int_map",std::map<std::string,int>{{"k",30}},"system str_int map");
dc::ConfigVar<std::unordered_map<std::string,int>>:: ptr g_str_int_unordered_map_value_config = dc::Config::Lookup("system.str_int_unordered_map",std::unordered_map<std::string,int>{{"j",31}},"system str_int unordered_map");

void print_yaml(const YAML::Node& node,int level){
    if(node.IsScalar()){
        DC_LOG_INFO(DC_LOG_ROOT())<<std::string(level*4,' ')<<node.Scalar()<<" - "<< node.Type()<<" - "<<level;
    }else if(node.IsNull()){
        DC_LOG_INFO(DC_LOG_ROOT())<<std::string(level*4,' ')<<"NULL"<<" - "<< node.Type()<<" - "<<level;
    }else if(node.IsMap()){
        for(auto it = node.begin();it!=node.end();it++){
            DC_LOG_INFO(DC_LOG_ROOT())<<std::string(level*4,' ')<<it->first <<" - "<<node.Type()<<" - "<<level;
            print_yaml(it->second,level+1);
        }
    }else if(node.IsSequence()){
        for(size_t i=0;i<node.size();i++){
            DC_LOG_INFO(DC_LOG_ROOT())<<std::string(level*4,' ')<<i<<" - "<<node[i].Type()<<" - "<<level;

             print_yaml(node[i],level+1);

        }
    }
}

void test_yaml(){
    YAML::Node root = YAML::LoadFile("/home/tohsakarin/Documents/sylar/sylar_server_frame/bin/conf/test.yml");

    print_yaml(root,0);
}


class Person{
public:
    std::string m_name = "Jerry";
    bool m_sex = 0;
    int m_age = 0;
   bool operator==(const Person &p)const {
   		return m_name == p.m_name && m_age == p.m_age && m_sex == p.m_sex;
   }
   std::string toString() const {
        std::stringstream ss;
        ss << "{Person name = "<<m_name
            <<" age = "<<m_age 
            <<" m_sex = " << (m_sex? "男": "女")<< std::endl; 
            return ss.str();
    }
};
namespace dc{
    //偏特化版本的string cast to unordered_map
template<>
class LexicalCast<std::string,Person>{
public:
    /*
    Person func(Person p){
        return std::move(p);
    }
    
    Person func(){
        Person p;
        return std::move(p);
    }*/
    Person  operator() (const std::string &v){
        YAML::Node node = YAML::Load(v);
        std::stringstream ss; 
        
        Person p;
        p.m_name = node["name"].as<std::string>();
        p.m_sex = node["sex"].as<bool>();
        p.m_age = node["age"].as<int>();
        return p;
    }
};

//偏特化版本的map转string

template<>
class LexicalCast<Person, std::string>{
public:
    std::string operator()(const Person &v){
        YAML::Node node;
        node["name"] = v.m_name;
        node["age"] = v.m_age;
        node["sex"] = v.m_sex;
        std::stringstream ss;
        ss<< node;
        return ss.str();
    }
};
}



dc::ConfigVar<Person>::ptr g_person = dc::Config::Lookup("class.person",Person(),"system person");
dc::ConfigVar<std::map<std::string,Person>>::ptr g_mperson = dc::Config::Lookup("class.map",std::map<std::string,Person>(),"system map person");
void test_class(){
    
    YAML::Node root = YAML::Load("/home/tohsakarin/Documents/sylar/sylar_server_frame/bin/conf/log.yml");
    dc::Config::LoadFromYaml(root);
    
}

void test_config(){

#define XX(g_var, name, prefix) \
    { \
    auto &v = g_var->getValue(); \
    for(auto &i : v){ \
        DC_LOG_INFO(DC_LOG_ROOT())<< #prefix " " #name ": "<<i; \
    } \
    DC_LOG_INFO(DC_LOG_ROOT())<< #prefix " " #name " yaml: "<< g_var->toString(); \
    }
#define XX_X(g_var, name, prefix) \
    { \
    auto &v = g_var->getValue(); \
    for(auto &i : v){ \
        DC_LOG_INFO(DC_LOG_ROOT())<< #prefix " " #name ": {"<<i.first << " -> " << i.second << "}"; \
    } \
    DC_LOG_INFO(DC_LOG_ROOT())<< #prefix " " #name " yaml: "<< g_var->toString(); \
    }
#define XX_XX(g_var, prefix) \
    {   \
        auto v = g_var->getValue(); \
        for(auto &i:v){ \
            DC_LOG_INFO(DC_LOG_ROOT()) << prefix<<  ": "<<i.first<< " - " << i.second.toString(); \
        } \
        DC_LOG_INFO(DC_LOG_ROOT()) << prefix << ": size = " << v.size(); \
    }

	g_person->addListener([](const Person& old_value, const Person& new_value){
		DC_LOG_INFO(DC_LOG_ROOT())<< "old_value = " << old_value.toString();
	});
    XX_XX(g_mperson,"class.map before");
    XX(g_int_list_value_config, int_list,before);
    XX(g_int_vec_value_config,int_vec,before);
    XX(g_int_set_value_config,int_set,before);
    XX(g_int_unordered_set_value_config,int_unordered_set,before);
    XX_X(g_str_int_map_value_config,str_int_map,before);
    XX_X(g_str_int_unordered_map_value_config,str_int_unordered_map,before);
    DC_LOG_INFO(DC_LOG_ROOT())<< "before: " << g_int_value_config->getValue() ;
    DC_LOG_INFO(DC_LOG_ROOT())<<"before: "<< g_person->getValue().toString() << " - " << g_person->toString();
    //DC_LOG_INFO(DC_LOG_ROOT())<< "before: "<< g_float_valuex_config->getValue() ;
    //auto ls = g_int_list_value_config->getValue();
    //std::for_each(ls.begin(),ls.end(),[ls](auto val){DC_LOG_INFO(DC_LOG_ROOT())<<"before: " <<"int_list: "<< val;});
    YAML::Node root = YAML::LoadFile("/home/tohsakarin/Documents/sylar/sylar_server_frame/bin/conf/test.yml");
    dc::Config::LoadFromYaml(root);
    //v = g_int_vec_value_config->getValue();
    //for(auto & i : v){
    //    DC_LOG_INFO(DC_LOG_ROOT())<< "after: " <<"int_vec: " << i; 
    //}

    //ls = g_int_list_value_config->getValue();
    //std::for_each(ls.begin(),ls.end(),[ls](auto val){DC_LOG_INFO(DC_LOG_ROOT())<<"before: " <<"int_list: "<< val;});
    XX(g_int_list_value_config,int_list,after);
    XX(g_int_vec_value_config,int_vec,after);
    XX(g_int_set_value_config,int_set,after);
    XX(g_int_unordered_set_value_config,int_unordered_set,after);
    XX_X(g_str_int_map_value_config,str_int_map,after);
    XX_X(g_str_int_unordered_map_value_config,str_int_unordered_map,after);
    DC_LOG_INFO(DC_LOG_ROOT())<<"after: "<< g_person->getValue().toString() << " - " << g_person->toString();
    XX_XX(g_mperson,"class.map after");
}
static dc::Logger::LoggerPtr system_log = DC_LOG_NAME("system");
void test_log(){
    
    std::cout << dc::loggerManager::GetInstance()->toYamlString() << std::endl;
    YAML::Node root = YAML::LoadFile("/home/tohsakarin/Documents/sylar/sylar_server_frame/bin/conf/log.yml");
    dc::Config::LoadFromYaml(root);
	std::cout<< "------------------------------" << std::endl;
	std:: cout << dc::loggerManager::GetInstance()->toYamlString() << std::endl;
    std::cout<< "===================="<<std::endl;
    std::cout<< root << std::endl;
    DC_LOG_INFO(system_log) << "hello system" << std::endl;
	system_log->setFormatter("%d - %m%n");
	DC_LOG_INFO(system_log) << "hello system" << std::endl;
}
int main(int argc,char **argv){

    DC_LOG_INFO(DC_LOG_ROOT()) << g_int_value_config->getValue();
    DC_LOG_INFO(DC_LOG_ROOT()) << g_float_value_config->toString();
    test_yaml();
    test_config();
    test_log();
	dc::Config::Visit([] (dc::ConfigVarBase::ptr var) {
		DC_LOG_INFO(system_log) << "name= " << var->getName()
							 << " description= " << var->getDescription()
							 << " typename= " << var->getTypeName()
							 << " value= " << var->toString();
	});
    //test_class();
    return 0;
}
