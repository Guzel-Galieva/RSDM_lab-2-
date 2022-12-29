using System;
using MySql.Data.MySqlClient;

namespace Tasks
{
    class Task2
    {
        public static void Main(string[] args)
        {
            string bd = @"server=db;userid=root;password=root;database=task_2";

            MySqlConnection con = new MySqlConnection(bd);
            con.Open();

            try
            {
                var req = "SELECT * FROM task_2.students WHERE task_2.students.id IN " +
                          "(SELECT zachetka.student_id FROM task_2.zachetka WHERE zachetka.grade = 5)";
                MySqlCommand cmd = new MySqlCommand(req, con);

                MySqlDataReader dr = cmd.ExecuteReader();

                List<Student> students = new List<Student>();
                while (dr.Read())
                {
                    students.Add(new Student(dr.GetUInt32(0), dr.GetString(1), dr.GetString(2),
                        dr.GetDateTime(3)));
                }
                dr.Close();
                
                Console.WriteLine($"id\tfirst\tlast");

                students.ForEach(s =>
                {
                    Console.WriteLine($"{s.Id}\t{s.First_name}\t{s.Last_name}");
                });

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            finally
            {
                con.Close();
            }
        }
    }
}