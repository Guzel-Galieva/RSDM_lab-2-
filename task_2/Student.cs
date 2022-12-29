namespace Tasks;

public class Student
{
    private uint _id;
    private string first_name;
    private string last_name;
    private DateTime birthday;

    public Student(uint id, string first_name, string last_name, DateTime birthday)
    {
        _id = id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.birthday = birthday;
    }

    public uint Id
    {
        get => _id;
        set => _id = value;
    }
    
    public string First_name
    {
        get => this.first_name;
        set => this.first_name = value;
    }
    
    public string Last_name
    {
        get => this.last_name;
        set => this.last_name = value;
    }
    
    public DateTime Birthday
    {
        get => this.birthday;
        set => this.birthday = value;
    }
}