using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using WAejemplo.Models;

namespace WAejemplo.DAL
{
    public class DALEmpleado
    {
        private IConfiguration configuration;
        List<Empleado> misEmpleados = new List<Empleado>();

        public DALEmpleado(IConfiguration configuration)
        {
            this.configuration = configuration;
        }
        public void addEmpleado(Empleado empleado)
        {
            using (var conn = new SqlConnection(configuration.GetConnectionString("RackForceDB")))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("insertarEmpleado", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", empleado.ID);
                    cmd.Parameters.AddWithValue("@idTienda", empleado.IDTienda);
                    cmd.Parameters.AddWithValue("@nombre", empleado.Nombre);
                    cmd.Parameters.AddWithValue("@apellido", empleado.Apellido);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Excepcion: {ex.Message}");
                    throw;
                }
                finally
                {
                    conn.Close();
                }     
            }
        }

        public List<Empleado> getEmpleados()
        {
            using (var conn = new SqlConnection(configuration.GetConnectionString("RackForceDB")))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("seleccionarEmpleados", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        misEmpleados.Add(new Empleado {
                            ID = reader["idEmpleado"].ToString(),
                            IDTienda = reader["idTienda"].ToString(),
                            Nombre = reader["nomEmpleado"].ToString(),
                            Apellido = reader["apellEmpleado"].ToString()
                        });
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"Excepcion: {ex.Message}");
                    throw;
                }
                finally
                {
                    conn.Close();
                }
            }

            return misEmpleados;
        }
    }
}
