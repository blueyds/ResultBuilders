@resultBuilder
public enum DictionaryBuilder{
    public static func buildBlock<Key:Hashable, Value>(_ components: (Key, Value)...) -> [Key:Value] {
        var result: [Key:Value] = [:]
        components.forEach(){
            result.updateValue($1, forKey: $0)    
        }
        return  result
    }
    
}

public func Dictionary<Key: Hashable, Value>(@DictionaryBuilder _ components: ()->[Key:Value])->[Key:Value]{
    components()
}
